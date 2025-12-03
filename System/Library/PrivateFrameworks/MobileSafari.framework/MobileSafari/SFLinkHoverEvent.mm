@interface SFLinkHoverEvent
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedMessageString;
- (SFLinkHoverEvent)initWithHoveredLinkURL:(id)l forCurrentURL:(id)rL modifierFlags:(int64_t)flags frame:(id)frame targetFrame:(id)targetFrame;
- (id)_formattedMessage;
@end

@implementation SFLinkHoverEvent

- (SFLinkHoverEvent)initWithHoveredLinkURL:(id)l forCurrentURL:(id)rL modifierFlags:(int64_t)flags frame:(id)frame targetFrame:(id)targetFrame
{
  lCopy = l;
  rLCopy = rL;
  frameCopy = frame;
  targetFrameCopy = targetFrame;
  v24.receiver = self;
  v24.super_class = SFLinkHoverEvent;
  v17 = [(SFLinkHoverEvent *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_url, l);
    v18->_modifierFlags = flags;
    v18->_hasTargetFrame = targetFrameCopy != 0;
    frameID = [frameCopy frameID];
    v18->_targetFrameIsSameAsFrame = frameID == [targetFrameCopy frameID];
    fragment = [lCopy fragment];
    v21 = [fragment length];
    if (v21)
    {
      LOBYTE(v21) = [lCopy safari_isSameAsURLRemovingFragment:rLCopy];
    }

    v18->_hasFragmentOnSamePage = v21;

    v22 = v18;
  }

  return v18;
}

- (id)_formattedMessage
{
  v22[2] = *MEMORY[0x1E69E9840];
  safari_defaultStatusMessageString = [(NSURL *)self->_url safari_defaultStatusMessageString];
  if (safari_defaultStatusMessageString)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:safari_defaultStatusMessageString];
  }

  else
  {
    v5 = self->_url;
    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v7 = [defaultParagraphStyle mutableCopy];

    [v7 setLineSpacing:1.5];
    [v7 setBaseWritingDirection:0];
    [v7 setAlignment:0];
    v21[0] = *MEMORY[0x1E69DB650];
    v8 = v21[0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v21[1] = *MEMORY[0x1E69DB688];
    v22[0] = labelColor;
    v22[1] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

    v19 = v8;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v20 = secondaryLabelColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

    if ([(NSURL *)v5 safari_isURLTooLongToDisplay])
    {
      v13 = objc_alloc(MEMORY[0x1E696AAB0]);
      safari_userVisibleStringConsideringLongURLs = [(NSURL *)v5 safari_userVisibleStringConsideringLongURLs];
      v15 = [v13 initWithString:safari_userVisibleStringConsideringLongURLs attributes:v10];
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
    _formattedMessage = [(SFLinkHoverEvent *)self _formattedMessage];
    v5 = self->_attributedMessage;
    self->_attributedMessage = _formattedMessage;

    attributedMessage = self->_attributedMessage;
  }

  return attributedMessage;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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