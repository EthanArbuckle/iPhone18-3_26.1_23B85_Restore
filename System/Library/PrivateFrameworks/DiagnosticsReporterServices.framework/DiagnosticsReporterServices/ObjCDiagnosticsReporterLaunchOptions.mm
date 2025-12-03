@interface ObjCDiagnosticsReporterLaunchOptions
- (NSArray)files_to_attach;
- (ObjCDiagnosticsReporterLaunchOptions)init;
- (void)setFiles_to_attach:(id)files_to_attach;
@end

@implementation ObjCDiagnosticsReporterLaunchOptions

- (ObjCDiagnosticsReporterLaunchOptions)init
{
  *(self + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach) = MEMORY[0x277D84F90];
  v3 = (self + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string);
  v5 = type metadata accessor for DiagnosticsReporterLaunchOptions();
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(ObjCDiagnosticsReporterLaunchOptions *)&v7 init];
}

- (void)setFiles_to_attach:(id)files_to_attach
{
  v4 = sub_21DD8C148();
  v5 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (NSArray)files_to_attach
{
  v3 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_21DD8C138();

  return v5;
}

@end