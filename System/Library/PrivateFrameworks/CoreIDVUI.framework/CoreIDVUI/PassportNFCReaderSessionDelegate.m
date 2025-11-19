@interface PassportNFCReaderSessionDelegate
- (_TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate)init;
- (void)readerSession:(id)a3 didDetectTags:(id)a4;
- (void)readerSessionDidEndUnexpectedly:(id)a3 reason:(id)a4;
@end

@implementation PassportNFCReaderSessionDelegate

- (_TtC9CoreIDVUIP33_6EA3681501B6C21AA10C1FB9062BCFC832PassportNFCReaderSessionDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)readerSession:(id)a3 didDetectTags:(id)a4
{
  sub_24579D5E0(0, &qword_27EE2A7F8);
  v6 = sub_245910C44();
  v7 = a3;
  v8 = self;
  sub_2458399F0(v7, v6);
}

- (void)readerSessionDidEndUnexpectedly:(id)a3 reason:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_245840644(v8);
}

@end