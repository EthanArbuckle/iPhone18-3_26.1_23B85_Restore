@interface SFLinkHoverEvent
- (BOOL)isEqual:(id)a3;
- (NSAttributedString)attributedMessageString;
- (SFLinkHoverEvent)initWithHoveredLinkURL:(id)a3 forCurrentURL:(id)a4 modifierFlags:(int64_t)a5 frame:(id)a6 targetFrame:(id)a7;
- (id)_formattedMessage;
@end

@implementation SFLinkHoverEvent

- (SFLinkHoverEvent)initWithHoveredLinkURL:(id)a3 forCurrentURL:(id)a4 modifierFlags:(int64_t)a5 frame:(id)a6 targetFrame:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v24.receiver = self;
  v24.super_class = SFLinkHoverEvent;
  v17 = [(SFLinkHoverEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, a3);
    v18->_modifierFlags = a5;
    v18->_hasTargetFrame = v16 != 0;
    v19 = [v15 frameID];
    v18->_targetFrameIsSameAsFrame = v19 == [v16 frameID];
    v20 = [v13 fragment];
    v21 = [v20 length];
    if (v21)
    {
      LOBYTE(v21) = [v13 safari_isSameAsURLRemovingFragment:v14];
    }

    v18->_hasFragmentOnSamePage = v21;

    v22 = v18;
  }

  return v18;
}

- (id)_formattedMessage
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = [(NSURL *)self->_url safari_defaultStatusMessageString];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3];
  }

  else
  {
    v5 = self->_url;
    v6 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    [v7 setLineSpacing:1.5];
    [v7 setBaseWritingDirection:0];
    [v7 setAlignment:0];
    v21[0] = *MEMORY[0x1E69DB650];
    v8 = v21[0];
    v9 = [MEMORY[0x1E69DC888] labelColor];
    v21[1] = *MEMORY[0x1E69DB688];
    v22[0] = v9;
    v22[1] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19 = v8;
    v11 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    if ([(NSURL *)v5 safari_isURLTooLongToDisplay])
    {
      v13 = objc_alloc(MEMORY[0x1E696AAB0]);
      v14 = [(NSURL *)v5 safari_userVisibleStringConsideringLongURLs];
      v15 = [v13 initWithString:v14 attributes:v10];
    }

    else
    {
      v15 = [(NSURL *)v5 safari_attributedStringWithSimplificationOptions:133 attributes:v10 attributesForDeemphasizedText:v12 attributesForHTTPSProtocol:0];
    }

    v16 = _WBSLocalizedString();
    v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithFormat:v17 options:0 locale:0, v15];
  }

  return v4;
}

- (NSAttributedString)attributedMessageString
{
  attributedMessage = self->_attributedMessage;
  if (!attributedMessage)
  {
    v4 = [(SFLinkHoverEvent *)self _formattedMessage];
    v5 = self->_attributedMessage;
    self->_attributedMessage = v4;

    attributedMessage = self->_attributedMessage;
  }

  return attributedMessage;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFLinkHoverEvent *)v5 url];
      if (WBSIsEqual())
      {
        modifierFlags = self->_modifierFlags;
        v8 = modifierFlags == [(SFLinkHoverEvent *)v5 modifierFlags];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end