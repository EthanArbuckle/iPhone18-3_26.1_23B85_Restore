@interface MediaControlsExpandableButtonOption
- (MediaControlsExpandableButtonOption)init;
- (id)description;
@end

@implementation MediaControlsExpandableButtonOption

- (MediaControlsExpandableButtonOption)init
{
  v3.receiver = self;
  v3.super_class = MediaControlsExpandableButtonOption;
  result = [(MediaControlsExpandableButtonOption *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MediaControlsExpandableButtonOption *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifer: %@ | asset: %@ | title: %@ | state: %@>", v4, self, v5, self->_asset, self->_title, self->_selectedState];

  return v6;
}

@end