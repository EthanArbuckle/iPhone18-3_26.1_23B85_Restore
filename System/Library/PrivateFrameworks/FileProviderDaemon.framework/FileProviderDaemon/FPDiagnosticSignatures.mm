@interface FPDiagnosticSignatures
+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)string error:(id)error direction:(id)direction jobCode:(id)code underlying:(id)underlying;
+ (id)validateJSONSignaturesWithJsonString:(id)string;
- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init;
@end

@implementation FPDiagnosticSignatures

+ (id)validateJSONSignaturesWithJsonString:(id)string
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  _s18FileProviderDaemon22FPDiagnosticSignaturesC22validateJSONSignatures10jsonStringSaySSGSS_tFZ_0();

  v3 = sub_1CF9E6D28();

  return v3;
}

+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)string error:(id)error direction:(id)direction jobCode:(id)code underlying:(id)underlying
{
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  errorCopy = error;
  directionCopy = direction;
  codeCopy = code;
  underlyingCopy = underlying;
  LOBYTE(underlying) = _s18FileProviderDaemon22FPDiagnosticSignaturesC015isErrorMatchingE010jsonString5error9direction7jobCode10underlyingSbSS_So7NSErrorCSo8NSNumberCSgA2NtFZ_0(v11, v13, errorCopy, direction, code, underlying);

  return underlying & 1;
}

- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FPDiagnosticSignatures();
  return [(FPDiagnosticSignatures *)&v3 init];
}

@end