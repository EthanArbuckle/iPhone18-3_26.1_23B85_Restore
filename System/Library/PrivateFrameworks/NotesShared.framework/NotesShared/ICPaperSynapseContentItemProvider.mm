@interface ICPaperSynapseContentItemProvider
+ (id)contentItemsForAttachment:(id)attachment;
- (ICPaperSynapseContentItemProvider)init;
@end

@implementation ICPaperSynapseContentItemProvider

+ (id)contentItemsForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  _s11NotesShared33ICPaperSynapseContentItemProviderC12contentItems13forAttachmentSaySo09SYContentF0CGSo12ICAttachmentC_tFZ_0(attachmentCopy);

  sub_21502B4C4();
  v4 = sub_2150A4EB0();

  return v4;
}

- (ICPaperSynapseContentItemProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICPaperSynapseContentItemProvider();
  return [(ICPaperSynapseContentItemProvider *)&v3 init];
}

@end