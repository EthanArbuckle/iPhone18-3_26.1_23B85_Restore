@interface AirPodsCrashReportObjc
+ (id)generateReportWithBinary:(id)a3 testMode:(BOOL)a4 productId:(unsigned int)a5 applicationInfo:(id)a6 description:(id)a7;
- (AirPodsCrashReportObjc)init;
@end

@implementation AirPodsCrashReportObjc

+ (id)generateReportWithBinary:(id)a3 testMode:(BOOL)a4 productId:(unsigned int)a5 applicationInfo:(id)a6 description:(id)a7
{
  v11 = sub_1D9849DB4();
  if (a6)
  {
    a6 = sub_1D9849DB4();
  }

  if (a7)
  {
    sub_1D9849DF4();
  }

  v12 = _sSo22AirPodsCrashReportObjcC15CoreDiagnosticsE08generateD010withBinary8testMode9productId15applicationInfo11description10Foundation4DataVSgSDySSALG_Sbs6UInt32VSDyS2SGSgSSSgtFZ_0(v11, a4, a5, a6);
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    v15 = 0;
  }

  else
  {
    v16 = sub_1D98499F4();
    sub_1D98279AC(v12, v14);
    v15 = v16;
  }

  return v15;
}

- (AirPodsCrashReportObjc)init
{
  v3.receiver = self;
  v3.super_class = AirPodsCrashReportObjc;
  return [(AirPodsCrashReportObjc *)&v3 init];
}

@end