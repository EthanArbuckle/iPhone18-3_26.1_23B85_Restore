@interface MFOutgoingLibraryMessageContent
- (id)copy;
- (id)headers;
@end

@implementation MFOutgoingLibraryMessageContent

- (id)copy
{
  v5.receiver = self;
  v5.super_class = MFOutgoingLibraryMessageContent;
  v3 = [(MFOutgoingMessageContent *)&v5 copy];
  [v3 setLibraryMessage:self->_libraryMessage];
  return v3;
}

- (id)headers
{
  libraryMessage = [(MFOutgoingLibraryMessageContent *)self libraryMessage];
  headers = [libraryMessage headers];
  v4 = [headers mutableCopy];

  return v4;
}

@end