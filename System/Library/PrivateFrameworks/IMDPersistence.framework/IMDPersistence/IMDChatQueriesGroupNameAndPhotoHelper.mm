@interface IMDChatQueriesGroupNameAndPhotoHelper
+ (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles;
- (_TtC14IMDPersistence37IMDChatQueriesGroupNameAndPhotoHelper)init;
@end

@implementation IMDChatQueriesGroupNameAndPhotoHelper

+ (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles
{
  sub_1B7CBCE40();
  sub_1B7CFECE0();
  sub_1B7CFE300();
  v4 = sub_1B7CFE2F0();

  return v4 & 1;
}

- (_TtC14IMDPersistence37IMDChatQueriesGroupNameAndPhotoHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IMDChatQueriesGroupNameAndPhotoHelper();
  return [(IMDChatQueriesGroupNameAndPhotoHelper *)&v3 init];
}

@end