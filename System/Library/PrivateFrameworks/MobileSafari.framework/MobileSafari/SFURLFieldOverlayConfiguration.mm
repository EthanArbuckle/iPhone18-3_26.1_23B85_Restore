@interface SFURLFieldOverlayConfiguration
- (SFURLFieldOverlayConfiguration)initWithIdentifier:(id)identifier;
@end

@implementation SFURLFieldOverlayConfiguration

- (SFURLFieldOverlayConfiguration)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SFURLFieldOverlayConfiguration;
  v5 = [(SFURLFieldOverlayConfiguration *)&v12 init];
  v6 = v5;
  if (v5)
  {
    buttonItems = v5->_buttonItems;
    v5->_buttonItems = MEMORY[0x1E695E0F0];

    v8 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v6->_numberOfLines = 1;
    v10 = v6;
  }

  return v6;
}

@end