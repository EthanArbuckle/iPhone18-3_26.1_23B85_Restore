@interface CKPhoneNumberCompressor
- (id)_compressPhoneNumberIfFitsInCompressionLevel:(int)a3;
- (id)compress;
@end

@implementation CKPhoneNumberCompressor

- (id)compress
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(CKPhoneNumberCompressor *)self _compressPhoneNumberIfFitsInCompressionLevel:0];
  if (!v3)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(CKPhoneNumberCompressor *)self preferredCompressions];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = -[CKPhoneNumberCompressor _compressPhoneNumberIfFitsInCompressionLevel:](self, "_compressPhoneNumberIfFitsInCompressionLevel:", [*(*(&v11 + 1) + 8 * i) intValue]);
          if (v9)
          {
            v3 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_12:
  }

  return v3;
}

- (id)_compressPhoneNumberIfFitsInCompressionLevel:(int)a3
{
  v3 = *&a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [(CKPhoneNumberCompressor *)self phoneNumber];
  v6 = MEMORY[0x193AF6160](v5, 0, v3);

  v12 = *MEMORY[0x1E69DB648];
  v7 = [(CKPhoneNumberCompressor *)self font];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v6 sizeWithAttributes:v8];
  v9 = 0;
  if (v10 < self->_desiredWidth)
  {
    v9 = v6;
  }

  return v9;
}

@end