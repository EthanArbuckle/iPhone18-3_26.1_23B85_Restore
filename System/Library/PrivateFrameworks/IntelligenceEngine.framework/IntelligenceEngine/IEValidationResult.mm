@interface IEValidationResult
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation IEValidationResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      type = [(IEValidationResult *)self type];
      type2 = [v6 type];
      if (type != type2)
      {
        v9 = 0;
LABEL_22:

        goto LABEL_23;
      }

      text = [(IEValidationResult *)self text];
      text2 = [v6 text];
      if (text != text2)
      {
        text3 = [(IEValidationResult *)self text];
        text4 = [v6 text];
        if (![text3 isEqualToString:?])
        {
          v9 = 0;
          goto LABEL_20;
        }
      }

      filename = [(IEValidationResult *)self filename];
      filename2 = [v6 filename];
      if (filename != filename2)
      {
        filename3 = [(IEValidationResult *)self filename];
        filename4 = [v6 filename];
        if (![filename3 isEqualToString:?])
        {
          v9 = 0;
          v12 = filename;
LABEL_18:

LABEL_19:
          if (text == text2)
          {
LABEL_21:

            goto LABEL_22;
          }

LABEL_20:

          goto LABEL_21;
        }
      }

      code = [(IEValidationResult *)self code];
      code2 = [v6 code];
      if (code == code2 || (-[IEValidationResult code](self, "code"), v18 = objc_claimAutoreleasedReturnValue(), [v6 code], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqualToString:", v3)))
      {
        lineNumber = [(IEValidationResult *)self lineNumber];
        v9 = lineNumber == [v6 lineNumber];
        if (code == code2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v9 = 0;
      }

LABEL_17:
      v12 = filename;
      if (filename == filename2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v9 = 0;
LABEL_23:

  return v9;
}

- (unint64_t)hash
{
  type = [(IEValidationResult *)self type];
  v4 = [type hash];

  text = [(IEValidationResult *)self text];
  v6 = [text hash];

  filename = [(IEValidationResult *)self filename];
  v8 = [filename hash];

  code = [(IEValidationResult *)self code];
  v10 = [code hash];
  v11 = v8 - (v6 - v4 + 32 * v4) + 32 * (v6 - v4 + 32 * v4);
  v12 = 31 * (v10 - v11 + 32 * v11);

  return v12 + [(IEValidationResult *)self lineNumber]+ 28629151;
}

@end