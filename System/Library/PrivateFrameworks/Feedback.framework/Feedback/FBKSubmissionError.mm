@interface FBKSubmissionError
- (NSDictionary)serverErrorDetails;
- (NSError)underlyingError;
- (NSString)description;
- (_TtC8Feedback18FBKSubmissionError)init;
- (_TtC8Feedback18FBKSubmissionError)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setServerErrorDetails:(id)details;
- (void)setUnderlyingError:(id)error;
@end

@implementation FBKSubmissionError

- (NSDictionary)serverErrorDetails
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_1B8C25088();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setServerErrorDetails:(id)details
{
  if (details)
  {
    v4 = sub_1B8C25098();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_serverErrorDetails;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSError)underlyingError
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUnderlyingError:(id)error
{
  v5 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = error;
  errorCopy = error;
}

- (NSString)description
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v4 = *(self + v3);
  selfCopy = self;
  v6 = v4;
  v7 = [v6 description];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    sub_1B8C25128();
    v8 = sub_1B8C250F8();
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B8BCDCC0(coderCopy);
}

- (_TtC8Feedback18FBKSubmissionError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1B8BCE1F4();

  return v4;
}

- (_TtC8Feedback18FBKSubmissionError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end