@interface LACPreboardErrorBuilder
+ (BOOL)hasCode:(id)a3 code:(int64_t)a4;
+ (id)genericErrorWithMessage:(id)a3;
+ (id)genericErrorWithUnderlyingError:(id)a3;
+ (id)notSupportedError;
- (_TtC23LocalAuthenticationCore23LACPreboardErrorBuilder)init;
@end

@implementation LACPreboardErrorBuilder

+ (BOOL)hasCode:(id)a3 code:(int64_t)a4
{
  v5 = a3;
  LOBYTE(a4) = specialized static LACPreboardErrorBuilder.hasCode(_:code:)(v5, a4);

  return a4 & 1;
}

+ (id)notSupportedError
{
  v2 = specialized static LACPreboardErrorBuilder.notSupportedError()();
  v3 = _convertErrorToNSError(_:)();

  return v3;
}

+ (id)genericErrorWithUnderlyingError:(id)a3
{
  v4 = a3;
  v5 = specialized static LACPreboardErrorBuilder.error(code:underlyingError:)(2, a3);

  v6 = _convertErrorToNSError(_:)();

  return v6;
}

+ (id)genericErrorWithMessage:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized static LACPreboardErrorBuilder.genericError(with:)(v3, v4);

  v6 = _convertErrorToNSError(_:)();

  return v6;
}

- (_TtC23LocalAuthenticationCore23LACPreboardErrorBuilder)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(LACPreboardErrorBuilder *)&v3 init];
}

@end