@interface MRKeyboardMessage
+ (id)encryptedMessageWithState:(unint64_t)a3 text:(id)a4 attributes:(id)a5 usingCryptoSession:(id)a6;
- (MRKeyboardMessage)initWithState:(unint64_t)a3 encryptedTextCyphertext:(id)a4 attributes:(id)a5;
- (MRTextEditingAttributes)attributes;
- (NSData)encryptedTextCyphertext;
- (id)decryptedTextUsingCryptoSession:(id)a3;
- (unint64_t)state;
@end

@implementation MRKeyboardMessage

+ (id)encryptedMessageWithState:(unint64_t)a3 text:(id)a4 attributes:(id)a5 usingCryptoSession:(id)a6
{
  v8 = a5;
  v9 = [a4 dataUsingEncoding:4];
  v10 = [[MRKeyboardMessage alloc] initWithState:a3 encryptedTextCyphertext:v9 attributes:v8];

  return v10;
}

- (MRKeyboardMessage)initWithState:(unint64_t)a3 encryptedTextCyphertext:(id)a4 attributes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v27.receiver = self;
  v27.super_class = MRKeyboardMessage;
  v10 = [(MRProtocolMessage *)&v27 init];
  if (v10)
  {
    v11 = [v9 copy];
    attributes = v10->_attributes;
    v10->_attributes = v11;

    v13 = objc_alloc_init(_MRKeyboardMessageProtobuf);
    [(_MRKeyboardMessageProtobuf *)v13 setState:a3];
    [(_MRKeyboardMessageProtobuf *)v13 setEncryptedTextCyphertext:v8];
    v14 = v9;
    v15 = objc_alloc_init(_MRTextEditingAttributesProtobuf);
    v16 = [v14 title];
    [(_MRTextEditingAttributesProtobuf *)v15 setTitle:v16];

    v17 = [v14 prompt];
    [(_MRTextEditingAttributesProtobuf *)v15 setPrompt:v17];

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
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 state];

  return v3;
}

- (NSData)encryptedTextCyphertext
{
  v2 = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = [v2 encryptedTextCyphertext];

  return v3;
}

- (MRTextEditingAttributes)attributes
{
  attributes = self->_attributes;
  if (!attributes)
  {
    v27 = [(MRProtocolMessage *)self underlyingCodableMessage];
    v4 = [v27 attributes];
    v5 = objc_alloc_init(MRMutableTextEditingAttributes);
    v6 = [v4 title];
    [(MRMutableTextEditingAttributes *)v5 setTitle:v6];

    v7 = [v4 prompt];
    [(MRMutableTextEditingAttributes *)v5 setPrompt:v7];

    v8 = [v4 inputTraits];
    memset(v30 + 8, 0, 128);
    v9 = [v8 autocapitalizationType];
    if ((v9 - 1) >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    LODWORD(v30[0]) = v10;
    v11 = [v8 keyboardType];
    v12 = 0;
    if ((v11 - 1) <= 0xB)
    {
      v12 = dword_1A2B81134[v11 - 1];
    }

    HIDWORD(v30[0]) = v12;
    v13 = [v8 returnKeyType];
    if ((v13 - 1) >= 0xB)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    LODWORD(v30[1]) = v14;
    BYTE8(v30[2]) = [v8 enablesReturnKeyAutomatically];
    BYTE9(v30[2]) = [v8 secureTextEntry];
    v15 = [v8 hasAutocorrection];
    v16 = 0;
    if (v15)
    {
      if ([v8 autocorrection])
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }
    }

    DWORD1(v30[0]) = v16;
    if ([v8 hasSpellchecking])
    {
      if ([v8 spellchecking])
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
    if ([v8 hasValidTextRangeLocation] && objc_msgSend(v8, "hasValidTextRangeLength"))
    {
      v18 = [v8 validTextRangeLocation];
      v19 = [v8 validTextRangeLength];
      *(&v30[1] + 1) = v18;
    }

    else
    {
      *(&v30[1] + 1) = 0;
      v19 = -1;
    }

    *&v30[2] = v19;
    v20 = [v8 pINEntrySeparatorIndexesCount];
    *&v30[8] = v20;
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = 1;
      do
      {
        *(&v30[3] + v22) = [v8 pINEntrySeparatorIndexesAtIndex:v22];
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

- (id)decryptedTextUsingCryptoSession:(id)a3
{
  v3 = [(MRKeyboardMessage *)self encryptedTextCyphertext];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

@end