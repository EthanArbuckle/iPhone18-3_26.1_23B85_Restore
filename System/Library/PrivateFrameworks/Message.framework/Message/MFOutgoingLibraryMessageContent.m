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
  v2 = [(MFOutgoingLibraryMessageContent *)self libraryMessage];
  v3 = [v2 headers];
  v4 = [v3 mutableCopy];

  return v4;
}

@end