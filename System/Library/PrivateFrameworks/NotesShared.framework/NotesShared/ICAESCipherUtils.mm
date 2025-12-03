@interface ICAESCipherUtils
+ (id)_ic_decrypt:(id)_ic_decrypt withCipherKey:(id)key standardKeyLength:(unint64_t)length additionalAuthenticatedData:(id)data inputTag:(id)tag standardTagLength:(unint64_t)tagLength inputInitializationVector:(id)vector standardInitializationVectorLength:(unint64_t)self0 error:(id *)self1;
+ (id)_ic_encrypt:(id)_ic_encrypt withCipherKey:(id)key standardKeyLength:(unint64_t)length additionalAuthenticatedData:(id)data outputTag:(id *)tag standardTagLength:(unint64_t)tagLength outputInitializationVector:(id *)vector standardInitializationVectorLength:(unint64_t)self0 error:(id *)self1;
+ (id)_ic_unwrap:(id)_ic_unwrap withWrapper:(id)wrapper standardKeyLength:(unint64_t)length standardWrappedKeyLength:(unint64_t)keyLength error:(id *)error;
+ (id)_ic_wrap:(id)_ic_wrap withWrapper:(id)wrapper standardKeyLength:(unint64_t)length standardWrappedKeyLength:(unint64_t)keyLength error:(id *)error;
@end

@implementation ICAESCipherUtils

+ (id)_ic_encrypt:(id)_ic_encrypt withCipherKey:(id)key standardKeyLength:(unint64_t)length additionalAuthenticatedData:(id)data outputTag:(id *)tag standardTagLength:(unint64_t)tagLength outputInitializationVector:(id *)vector standardInitializationVectorLength:(unint64_t)self0 error:(id *)self1
{
  v55[1] = *MEMORY[0x277D85DE8];
  _ic_encryptCopy = _ic_encrypt;
  keyCopy = key;
  dataCopy = data;
  if (error)
  {
    *error = 0;
    if (!_ic_encryptCopy)
    {
      v29 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"plainData is nil"];
      v55[0] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v22 = v29;
      v23 = 15;
      goto LABEL_12;
    }

    if ([keyCopy length] != length)
    {
      v19 = MEMORY[0x277CCA9B8];
      v52 = *MEMORY[0x277CCA450];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Encrypting key length is %zu, but should be %ld.", objc_msgSend(keyCopy, "length"), length];
      v53 = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v22 = v19;
      v23 = 1;
LABEL_12:
      [v22 errorWithDomain:@"com.apple.notes.cipher" code:v23 userInfo:v21];
      *error = v28 = 0;
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (!_ic_encryptCopy || [keyCopy length] != length)
  {
    v28 = 0;
    goto LABEL_26;
  }

  v45 = 0;
  v24 = [MEMORY[0x277CBEA90] ic_randomDataOfLength:vectorLength error:&v45];
  v20 = v45;
  v25 = v24;
  *vector = v24;
  if (!v20)
  {
    v21 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(_ic_encryptCopy, "length")}];
    [MEMORY[0x277CBEB28] dataWithLength:tagLength];
    v44 = v43 = dataCopy;
    if (dataCopy)
    {
      [dataCopy bytes];
      [dataCopy length];
    }

    [keyCopy bytes];
    [keyCopy length];
    [*vector bytes];
    [*vector length];
    [_ic_encryptCopy bytes];
    v30 = [_ic_encryptCopy length];
    mutableBytes = [v21 mutableBytes];
    v27 = v44;
    mutableBytes2 = [v44 mutableBytes];
    v41 = mutableBytes;
    v32 = CCCryptorGCMOneshotEncrypt();
    if (v32)
    {
      if (error)
      {
        v33 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA450];
        tagLength = [MEMORY[0x277CCACA8] stringWithFormat:@"CCCryptorGCM() encryption failed with status %d", v32, v41, mutableBytes2, tagLength];
        v49 = tagLength;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        *error = [v33 errorWithDomain:@"com.apple.notes.cipher" code:3 userInfo:v35];
      }

      v28 = 0;
      v27 = v44;
    }

    else
    {
      if ([v44 length] != tagLength)
      {
        dataCopy = v43;
        if (error)
        {
          v38 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277CCA450];
          tagLength2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tag length changed to %zu during encryption, but should remain %ld", tagLength, tagLength];
          v47 = tagLength2;
          v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *error = [v38 errorWithDomain:@"com.apple.notes.cipher" code:4 userInfo:v40];
        }

        v28 = 0;
        goto LABEL_23;
      }

      v36 = v44;
      *tag = v44;
      v28 = [v21 copy];
    }

    dataCopy = v43;
LABEL_23:

    goto LABEL_24;
  }

  if (error)
  {
    v26 = MEMORY[0x277CCA9B8];
    v50[0] = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"IV generation failed"];
    v50[1] = *MEMORY[0x277CCA7E8];
    v51[0] = v21;
    v51[1] = v20;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
    [v26 errorWithDomain:@"com.apple.notes.cipher" code:2 userInfo:v27];
    *error = v28 = 0;
    goto LABEL_23;
  }

  v28 = 0;
LABEL_25:

LABEL_26:

  return v28;
}

+ (id)_ic_decrypt:(id)_ic_decrypt withCipherKey:(id)key standardKeyLength:(unint64_t)length additionalAuthenticatedData:(id)data inputTag:(id)tag standardTagLength:(unint64_t)tagLength inputInitializationVector:(id)vector standardInitializationVectorLength:(unint64_t)self0 error:(id *)self1
{
  v49[1] = *MEMORY[0x277D85DE8];
  _ic_decryptCopy = _ic_decrypt;
  keyCopy = key;
  dataCopy = data;
  tagCopy = tag;
  vectorCopy = vector;
  if (error)
  {
    *error = 0;
    if (!_ic_decryptCopy)
    {
      v27 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      vectorLength = [MEMORY[0x277CCACA8] stringWithFormat:@"cipherData is nil"];
      v49[0] = vectorLength;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v24 = v27;
      v25 = 16;
      goto LABEL_17;
    }

    if ([keyCopy length] != length)
    {
      v28 = MEMORY[0x277CCA9B8];
      v46 = *MEMORY[0x277CCA450];
      vectorLength = [MEMORY[0x277CCACA8] stringWithFormat:@"Decrypting key length is %zu, but should be %ld.", objc_msgSend(keyCopy, "length"), length];
      v47 = vectorLength;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      *error = [v28 errorWithDomain:@"com.apple.notes.cipher" code:5 userInfo:v29];

      goto LABEL_19;
    }

    if ([vectorCopy length] != vectorLength)
    {
      v30 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277CCA450];
      vectorLength = [MEMORY[0x277CCACA8] stringWithFormat:@"IV length is %zu, but should remain %ld", objc_msgSend(tagCopy, "length"), vectorLength];
      v45 = vectorLength;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v24 = v30;
      v25 = 14;
      goto LABEL_17;
    }

    if ([tagCopy length] != tagLength)
    {
      v21 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      vectorLength = [MEMORY[0x277CCACA8] stringWithFormat:@"Tag length is %zu, but should remain %ld", objc_msgSend(tagCopy, "length"), tagLength];
      v43 = vectorLength;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v24 = v21;
      v25 = 4;
LABEL_17:
      *error = [v24 errorWithDomain:@"com.apple.notes.cipher" code:v25 userInfo:v23];
LABEL_18:

      goto LABEL_19;
    }
  }

  else if (!_ic_decryptCopy || [keyCopy length] != length || objc_msgSend(vectorCopy, "length") != vectorLength || objc_msgSend(tagCopy, "length") != tagLength)
  {
    v26 = 0;
    goto LABEL_21;
  }

  if (dataCopy)
  {
    [dataCopy bytes];
    [dataCopy length];
  }

  vectorLength = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(_ic_decryptCopy, "length")}];
  [keyCopy bytes];
  [keyCopy length];
  [vectorCopy bytes];
  [vectorCopy length];
  [_ic_decryptCopy bytes];
  v32 = [_ic_decryptCopy length];
  mutableBytes = [vectorLength mutableBytes];
  bytes = [tagCopy bytes];
  v39 = [tagCopy length];
  v37 = mutableBytes;
  v34 = CCCryptorGCMOneshotDecrypt();
  if (!v34)
  {
    v26 = [vectorLength copy];
    goto LABEL_20;
  }

  if (error)
  {
    v35 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCCryptorGCM() decryption failed with status %d", v34, v37, bytes, v39];
    v41 = v23;
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    *error = [v35 errorWithDomain:@"com.apple.notes.cipher" code:6 userInfo:v36];

    goto LABEL_18;
  }

LABEL_19:
  v26 = 0;
LABEL_20:

LABEL_21:

  return v26;
}

+ (id)_ic_wrap:(id)_ic_wrap withWrapper:(id)wrapper standardKeyLength:(unint64_t)length standardWrappedKeyLength:(unint64_t)keyLength error:(id *)error
{
  v35[1] = *MEMORY[0x277D85DE8];
  _ic_wrapCopy = _ic_wrap;
  wrapperCopy = wrapper;
  v13 = wrapperCopy;
  if (error)
  {
    *error = 0;
    if ([wrapperCopy length] != length)
    {
      v22 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapper key length is %zu when wrapping, but should be %ld.", objc_msgSend(v13, "length"), length];
      v35[0] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v17 = v22;
      v18 = 9;
      goto LABEL_11;
    }

    if ([_ic_wrapCopy length] != length)
    {
      v14 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Raw key length is %zu when wrapping, but should be %ld.", objc_msgSend(_ic_wrapCopy, "length"), length];
      v33 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v17 = v14;
      v18 = 10;
LABEL_11:
      *error = [v17 errorWithDomain:@"com.apple.notes.cipher" code:v18 userInfo:v16];
      goto LABEL_12;
    }

LABEL_7:
    v15 = [MEMORY[0x277CBEB28] dataWithLength:keyLength];
    wrappedKeyLen = [v15 length];
    v19 = CCSymmetricKeyWrap(1u, *MEMORY[0x277D85C18], *MEMORY[0x277D85C20], [v13 bytes], objc_msgSend(v13, "length"), objc_msgSend(_ic_wrapCopy, "bytes"), objc_msgSend(_ic_wrapCopy, "length"), objc_msgSend(v15, "mutableBytes"), &wrappedKeyLen);
    if (!v19)
    {
      if (wrappedKeyLen == keyLength)
      {
        error = [v15 copy];
        goto LABEL_14;
      }

      if (!error)
      {
        goto LABEL_14;
      }

      v24 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      keyLength = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapped key length is %zu, but should be %ld", wrappedKeyLen, keyLength];
      v29 = keyLength;
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *error = [v24 errorWithDomain:@"com.apple.notes.cipher" code:11 userInfo:v26];

      goto LABEL_13;
    }

    if (!error)
    {
LABEL_14:

      goto LABEL_16;
    }

    v20 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCSymmetricKeyWrap() wrapping failed with status %d", v19];
    v31 = v16;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    *error = [v20 errorWithDomain:@"com.apple.notes.cipher" code:8 userInfo:v21];

LABEL_12:
LABEL_13:
    error = 0;
    goto LABEL_14;
  }

  if ([wrapperCopy length] == length && objc_msgSend(_ic_wrapCopy, "length") == length)
  {
    goto LABEL_7;
  }

  error = 0;
LABEL_16:

  return error;
}

+ (id)_ic_unwrap:(id)_ic_unwrap withWrapper:(id)wrapper standardKeyLength:(unint64_t)length standardWrappedKeyLength:(unint64_t)keyLength error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  _ic_unwrapCopy = _ic_unwrap;
  wrapperCopy = wrapper;
  v13 = wrapperCopy;
  if (error)
  {
    *error = 0;
    if ([wrapperCopy length] != length)
    {
      v20 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      keyLength = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapper key length is %zu when unwrapping, but should be %ld.", objc_msgSend(v13, "length"), length];
      v33[0] = keyLength;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *error = [v20 errorWithDomain:@"com.apple.notes.cipher" code:9 userInfo:v21];
      goto LABEL_12;
    }

    if ([_ic_unwrapCopy length] != keyLength)
    {
      v14 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      keyLength = [MEMORY[0x277CCACA8] stringWithFormat:@"Wrapped key length is %zu when unwrapping, but should be %ld.", objc_msgSend(_ic_unwrapCopy, "length"), keyLength];
      v31 = keyLength;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      *error = [v14 errorWithDomain:@"com.apple.notes.cipher" code:11 userInfo:v16];
LABEL_10:

LABEL_13:
      error = 0;
      goto LABEL_14;
    }

LABEL_7:
    keyLength = [MEMORY[0x277CBEB28] dataWithLength:length];
    rawKeyLen = [keyLength length];
    v17 = CCSymmetricKeyUnwrap(1u, *MEMORY[0x277D85C18], *MEMORY[0x277D85C20], [v13 bytes], objc_msgSend(v13, "length"), objc_msgSend(_ic_unwrapCopy, "bytes"), objc_msgSend(_ic_unwrapCopy, "length"), objc_msgSend(keyLength, "mutableBytes"), &rawKeyLen);
    if (v17)
    {
      if (!error)
      {
LABEL_14:

        goto LABEL_16;
      }

      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"CCSymmetricKeyUnwrap() unwrapping failed with status %d", v17];
      v29 = v16;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *error = [v18 errorWithDomain:@"com.apple.notes.cipher" code:8 userInfo:v19];

      goto LABEL_10;
    }

    if (rawKeyLen == length)
    {
      error = [keyLength copy];
      goto LABEL_14;
    }

    if (!error)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA450];
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unwrapped key length is %zu, but should be %ld", rawKeyLen, length];
    v27 = v21;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    *error = [v23 errorWithDomain:@"com.apple.notes.cipher" code:10 userInfo:v24];

LABEL_12:
    goto LABEL_13;
  }

  if ([wrapperCopy length] == length && objc_msgSend(_ic_unwrapCopy, "length") == keyLength)
  {
    goto LABEL_7;
  }

  error = 0;
LABEL_16:

  return error;
}

@end