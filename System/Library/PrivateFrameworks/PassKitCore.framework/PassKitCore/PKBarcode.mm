@interface PKBarcode
+ (id)barcodesWithPassDictionary:(id)dictionary bundle:(id)bundle;
- (BOOL)isEqual:(id)equal;
- (NSString)message;
- (PKBarcode)init;
- (PKBarcode)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKBarcode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self->_format == v5[6])
    {
      options = self->_options;
      v7 = v5[3];
      if (options && v7)
      {
        if (([(NSDictionary *)options isEqual:?]& 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (options != v7)
      {
        goto LABEL_16;
      }

      messageData = self->_messageData;
      v10 = v5[2];
      if (messageData && v10)
      {
        if (([(NSData *)messageData isEqual:?]& 1) != 0)
        {
LABEL_12:
          altText = self->_altText;
          v12 = v5[5];
          if (altText && v12)
          {
            v8 = [(NSString *)altText isEqual:?];
          }

          else
          {
            v8 = altText == v12;
          }

          goto LABEL_17;
        }
      }

      else if (messageData == v10)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    v8 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (PKBarcode)init
{
  v3.receiver = self;
  v3.super_class = PKBarcode;
  result = [(PKBarcode *)&v3 init];
  if (result)
  {
    result->_format = 0;
  }

  return result;
}

+ (id)barcodesWithPassDictionary:(id)dictionary bundle:(id)bundle
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v7 = bundleCopy;
  v8 = 0;
  if (dictionaryCopy && bundleCopy)
  {
    v9 = [dictionaryCopy PKArrayForKey:@"barcodes"];
    if (!v9)
    {
      v10 = [dictionaryCopy PKDictionaryForKey:@"barcode"];
      v11 = v10;
      if (v10)
      {
        v52[0] = v10;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
      }

      else
      {
        v9 = 0;
      }
    }

    v42 = dictionaryCopy;
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v9;
    v45 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v45)
    {
      v13 = *v47;
      v43 = *v47;
      do
      {
        v14 = 0;
        do
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v46 + 1) + 8 * v14);
          v16 = [PKBarcode alloc];
          v17 = v15;
          v18 = v7;
          if (v16)
          {
            v50.receiver = v16;
            v50.super_class = PKBarcode;
            v19 = objc_msgSendSuper2(&v50, sel_init);
            if (!v19)
            {
              goto LABEL_31;
            }

            v20 = [v17 PKStringForKey:@"format"];
            if (v20)
            {
              v21 = [MEMORY[0x1E696AD98] numberWithInt:0];
              v26 = _PKEnumValueFromString(v20, v21, @"PKBarcodeFormat", @"PKBarcodeFormatUnknown, PKBarcodeFormatQR, PKBarcodeFormatPDF417, PKBarcodeFormatAztec, PKBarcodeFormatCode128", v22, v23, v24, v25, 0);
            }

            else
            {
              v26 = 0;
            }

            v19->_format = v26;

            if (!v19->_format)
            {
              v16 = 0;
              goto LABEL_36;
            }

            v27 = v12;
            v28 = v7;
            v29 = [v17 objectForKey:@"message"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [v17 objectForKey:@"messageEncoding"];
              if (v30)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  goto LABEL_34;
                }

                v31 = CFStringConvertIANACharSetNameToEncoding(v30);
                v19->_messageEncoding = v31;
                if (!v31)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v31 = 513;
                v19->_messageEncoding = 513;
              }

              v32 = [v29 dataUsingEncoding:CFStringConvertEncodingToNSStringEncoding(v31)];
              messageData = v19->_messageData;
              v19->_messageData = v32;

              v34 = [v17 objectForKey:@"altText"];
              if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v35 = PKLocalizedPassStringForPassBundle(v34, v18, 0);
                altText = v19->_altText;
                v19->_altText = v35;

                v37 = [v17 objectForKey:@"header"];
                if (!v37 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v38 = PKLocalizedPassStringForPassBundle(v37, v18, 0);
                  header = v19->_header;
                  v19->_header = v38;

                  v7 = v28;
                  v12 = v27;
                  v13 = v43;
LABEL_31:
                  v19 = v19;
                  v16 = v19;
                  goto LABEL_36;
                }
              }

LABEL_34:
            }

            v16 = 0;
            v7 = v28;
            v12 = v27;
            v13 = v43;
            goto LABEL_36;
          }

          v19 = 0;
LABEL_36:

          [v12 safelyAddObject:v16];
          ++v14;
        }

        while (v45 != v14);
        v40 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        v45 = v40;
      }

      while (v40);
    }

    if ([v12 count])
    {
      v8 = [v12 copy];
    }

    else
    {
      v8 = 0;
    }

    dictionaryCopy = v42;
  }

  return v8;
}

- (PKBarcode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKBarcode;
  v5 = [(PKBarcode *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    messageData = v5->_messageData;
    v5->_messageData = v6;

    v5->_messageEncoding = [coderCopy decodeInt32ForKey:@"messageEncoding"];
    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    options = v5->_options;
    v5->_options = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altText"];
    altText = v5->_altText;
    v5->_altText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"header"];
    header = v5->_header;
    v5->_header = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  messageData = self->_messageData;
  coderCopy = coder;
  [coderCopy encodeObject:messageData forKey:@"message"];
  [coderCopy encodeInt32:self->_messageEncoding forKey:@"messageEncoding"];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeObject:self->_options forKey:@"options"];
  [coderCopy encodeObject:self->_altText forKey:@"altText"];
  [coderCopy encodeObject:self->_header forKey:@"header"];
}

- (NSString)message
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_messageData encoding:CFStringConvertEncodingToNSStringEncoding(self->_messageEncoding)];

  return v2;
}

@end