@interface FBKSubmissionError
- (NSDictionary)serverErrorDetails;
- (NSError)underlyingError;
- (NSString)description;
- (_TtC8Feedback18FBKSubmissionError)init;
- (_TtC8Feedback18FBKSubmissionError)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setServerErrorDetails:(id)a3;
- (void)setUnderlyingError:(id)a3;
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

- (void)setServerErrorDetails:(id)a3
{
  if (a3)
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

- (void)setUnderlyingError:(id)a3
{
  v5 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSString)description
{
  v3 = OBJC_IVAR____TtC8Feedback18FBKSubmissionError_underlyingError;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B8BCDCC0(v4);
}

- (_TtC8Feedback18FBKSubmissionError)initWithCoder:(id)a3
{
  v3 = a3;
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