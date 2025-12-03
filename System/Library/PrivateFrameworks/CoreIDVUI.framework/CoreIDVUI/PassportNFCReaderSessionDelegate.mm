@interface PassportNFCReaderSessionDelegate
- (_TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate)init;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason;
@end

@implementation PassportNFCReaderSessionDelegate

- (_TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  sub_24579D5E0(0, &qword_27EE2A7F8);
  v6 = sub_245910C44();
  sessionCopy = session;
  selfCopy = self;
  sub_2458399F0(sessionCopy, v6);
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly reason:(id)reason
{
  unexpectedlyCopy = unexpectedly;
  reasonCopy = reason;
  selfCopy = self;
  sub_245840644(reasonCopy);
}

@end