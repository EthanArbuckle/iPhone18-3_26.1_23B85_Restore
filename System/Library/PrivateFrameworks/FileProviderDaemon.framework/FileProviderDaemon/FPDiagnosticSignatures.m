@interface FPDiagnosticSignatures
+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)a3 error:(id)a4 direction:(id)a5 jobCode:(id)a6 underlying:(id)a7;
+ (id)validateJSONSignaturesWithJsonString:(id)a3;
- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init;
@end

@implementation FPDiagnosticSignatures

+ (id)validateJSONSignaturesWithJsonString:(id)a3
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  _s18FileProviderDaemon22FPDiagnosticSignaturesC22validateJSONSignatures10jsonStringSaySSGSS_tFZ_0();

  v3 = sub_1CF9E6D28();

  return v3;
}

+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)a3 error:(id)a4 direction:(id)a5 jobCode:(id)a6 underlying:(id)a7
{
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  LOBYTE(a7) = _s18FileProviderDaemon22FPDiagnosticSignaturesC015isErrorMatchingE010jsonString5error9direction7jobCode10underlyingSbSS_So7NSErrorCSo8NSNumberCSgA2NtFZ_0(v11, v13, v14, a5, a6, a7);

  return a7 & 1;
}

- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FPDiagnosticSignatures();
  return [(FPDiagnosticSignatures *)&v3 init];
}

@end