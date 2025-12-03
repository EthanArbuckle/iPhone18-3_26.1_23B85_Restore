@interface PKSharingHomeInvitation
- (PKSharingHomeInvitation)initWithDisplayInformation:(id)information appleSharingDict:(id)dict;
@end

@implementation PKSharingHomeInvitation

- (PKSharingHomeInvitation)initWithDisplayInformation:(id)information appleSharingDict:(id)dict
{
  selfCopy = 0;
  if (information && dict)
  {
    self = [(PKSharingGenericMessage *)self initWithFormat:4 type:1 genericSharingDict:MEMORY[0x1E695E0F8] appleSharingDict:dict displayInformation:information];
    selfCopy = self;
  }

  return selfCopy;
}

@end