@interface MRKeyboardMessage
+ (id)encryptedMessageWithState:(unint64_t)state text:(id)text attributes:(id)attributes usingCryptoSession:(id)session;
- (MRKeyboardMessage)initWithState:(unint64_t)state encryptedTextCyphertext:(id)cyphertext attributes:(id)attributes;
- (MRTextEditingAttributes)attributes;
- (NSData)encryptedTextCyphertext;
- (id)decryptedTextUsingCryptoSession:(id)session;
- (unint64_t)state;
@end

@implementation MRKeyboardMessage

+ (id)encryptedMessageWithState:(unint64_t)state text:(id)text attributes:(id)attributes usingCryptoSession:(id)session
{
  attributesCopy = attributes;
  v9 = [text dataUsingEncoding:4];
  v10 = [[MRKeyboardMessage alloc] initWithState:state encryptedTextCyphertext:v9 attributes:attributesCopy];

  return v10;
}

- (MRKeyboardMessage)initWithState:(unint64_t)state encryptedTextCyphertext:(id)cyphertext attributes:(id)attributes
{
  cyphertextCopy = cyphertext;
  attributesCopy = attributes;
  v27.receiver = self;
  v27.super_class = MRKeyboardMessage;
  v10 = [(MRProtocolMessage *)&v27 init];
  if (v10)
  {
    v11 = [attributesCopy copy];
    attributes = v10->_attributes;
    v10->_attributes = v11;

    v13 = objc_alloc_init(_MRKeyboardMessageProtobuf);
    [(_MRKeyboardMessageProtobuf *)v13 setState:state];
    [(_MRKeyboardMessageProtobuf *)v13 setEncryptedTextCyphertext:cyphertextCopy];
    v14 = attributesCopy;
    v15 = objc_alloc_init(_MRTextEditingAttributesProtobuf);
    title = [v14 title];
    [(_MRTextEditingAttributesProtobuf *)v15 setTitle:title];

    prompt = [v14 prompt];
    [(_MRTextEditingAttributesProtobuf *)v15 setPrompt:prompt];

    if (v14)
    {
      [v14 inputTraits];
    }

    else
    {
      v32 = 0;
      v30 = 0u;
      memset(v31, 0, sizeof(v31));
      v28 = 0u;
      v29 = 0u;
    }

    v18 = objc_alloc_init(_MRTextInputTraitsProtobuf);
    v19 = v18;
    if ((v28 - 1) >= 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = v28;
    }

    [(_MRTextInputTraitsProtobuf *)v18 setAutocapitalizationType:v20];
    v21 = 0;
    if ((HIDWORD(v28) - 1) <= 0xA)
    {
      v21 = dword_1A2B81108[HIDWORD(v28) - 1];
    }

    [(_MRTextInputTraitsProtobuf *)v19 setKeyboardType:v21];
    if ((v29 - 1) >= 0xB)
    {
      v22 = 0;
    }

    else
    {
      v22 = v29;
    }

    [(_MRTextInputTraitsProtobuf *)v19 setReturnKeyType:v22];
    [(_MRTextInputTraitsProtobuf *)v19 setEnablesReturnKeyAutomatically:BYTE8(v30)];
    [(_MRTextInputTraitsProtobuf *)v19 setSecureTextEntry:BYTE9(v30)];
    if (DWORD1(v28))
    {
      [(_MRTextInputTraitsProtobuf *)v19 setAutocorrection:DWORD1(v28) == 2];
    }

    if (DWORD2(v28))
    {
      [(_MRTextInputTraitsProtobuf *)v19 setSpellchecking:DWORD2(v28) == 2];
    }

    [(_MRTextInputTraitsProtobuf *)v19 setValidTextRangeLocation:*(&v29 + 1)];
    [(_MRTextInputTraitsProtobuf *)v19 setValidTextRangeLength:v30];
    if (v32)
    {
      v23 = 0;
      v24 = 1;
      do
      {
        [(_MRTextInputTraitsProtobuf *)v19 addPINEntrySeparatorIndexes:*(v31 + v23)];
        v23 = v24;
      }

      while (v32 > v24++);
    }

    [(_MRTextEditingAttributesProtobuf *)v15 setInputTraits:v19];

    [(_MRKeyboardMessageProtobuf *)v13 setAttributes:v15];
    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v13];
  }

  return v10;
}

- (unint64_t)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  state = [underlyingCodableMessage state];

  return state;
}

- (NSData)encryptedTextCyphertext
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  encryptedTextCyphertext = [underlyingCodableMessage encryptedTextCyphertext];

  return encryptedTextCyphertext;
}

- (MRTextEditingAttributes)attributes
{
  attributes = self->_attributes;
  if (!attributes)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    attributes = [underlyingCodableMessage attributes];
    v5 = objc_alloc_init(MRMutableTextEditingAttributes);
    title = [attributes title];
    [(MRMutableTextEditingAttributes *)v5 setTitle:title];

    prompt = [attributes prompt];
    [(MRMutableTextEditingAttributes *)v5 setPrompt:prompt];

    inputTraits = [attributes inputTraits];
    memset(v30 + 8, 0, 128);
    autocapitalizationType = [inputTraits autocapitalizationType];
    if ((autocapitalizationType - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = autocapitalizationType;
    }

    LODWORD(v30[0]) = v10;
    keyboardType = [inputTraits keyboardType];
    v12 = 0;
    if ((keyboardType - 1) <= 0xB)
    {
      v12 = dword_1A2B81134[keyboardType - 1];
    }

    HIDWORD(v30[0]) = v12;
    returnKeyType = [inputTraits returnKeyType];
    if ((returnKeyType - 1) >= 0xB)
    {
      v14 = 0;
    }

    else
    {
      v14 = returnKeyType;
    }

    LODWORD(v30[1]) = v14;
    BYTE8(v30[2]) = [inputTraits enablesReturnKeyAutomatically];
    BYTE9(v30[2]) = [inputTraits secureTextEntry];
    hasAutocorrection = [inputTraits hasAutocorrection];
    v16 = 0;
    if (hasAutocorrection)
    {
      if ([inputTraits autocorrection])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    DWORD1(v30[0]) = v16;
    if ([inputTraits hasSpellchecking])
    {
      if ([inputTraits spellchecking])
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }

    DWORD2(v30[0]) = v17;
    if ([inputTraits hasValidTextRangeLocation] && objc_msgSend(inputTraits, "hasValidTextRangeLength"))
    {
      validTextRangeLocation = [inputTraits validTextRangeLocation];
      validTextRangeLength = [inputTraits validTextRangeLength];
      *(&v30[1] + 1) = validTextRangeLocation;
    }

    else
    {
      *(&v30[1] + 1) = 0;
      validTextRangeLength = -1;
    }

    *&v30[2] = validTextRangeLength;
    pINEntrySeparatorIndexesCount = [inputTraits pINEntrySeparatorIndexesCount];
    *&v30[8] = pINEntrySeparatorIndexesCount;
    if (pINEntrySeparatorIndexesCount)
    {
      v21 = pINEntrySeparatorIndexesCount;
      v22 = 0;
      v23 = 1;
      do
      {
        *(&v30[3] + v22) = [inputTraits pINEntrySeparatorIndexesAtIndex:v22];
        v22 = v23;
      }

      while (v21 > v23++);
    }

    v28[6] = v30[6];
    v28[7] = v30[7];
    v29 = *&v30[8];
    v28[2] = v30[2];
    v28[3] = v30[3];
    v28[4] = v30[4];
    v28[5] = v30[5];
    v28[0] = v30[0];
    v28[1] = v30[1];
    [(MRMutableTextEditingAttributes *)v5 setInputTraits:v28];

    v25 = self->_attributes;
    self->_attributes = &v5->super;

    attributes = self->_attributes;
  }

  return attributes;
}

- (id)decryptedTextUsingCryptoSession:(id)session
{
  encryptedTextCyphertext = [(MRKeyboardMessage *)self encryptedTextCyphertext];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:encryptedTextCyphertext encoding:4];

  return v4;
}

@end