@interface CDMClientNotification
- (void)assetsAvailable;
- (void)assetsAvailableForLocale:(id)a3;
- (void)assetsAvailableForLocale:(id)a3 withType:(int64_t)a4;
- (void)assetsUnavailable;
- (void)assetsUnavailableWithType:(int64_t)a3;
- (void)processCDMNluRequestCallback:(id)a3;
- (void)processCDMNluRequestErrorCallback:(id)a3 error:(id)a4;
@end

@implementation CDMClientNotification

- (void)processCDMNluRequestErrorCallback:(id)a3 error:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  OUTLINED_FUNCTION_162();
  sub_1DC356380();
}

- (void)processCDMNluRequestCallback:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DC3568E0();
}

- (void)assetsAvailable
{
  v2 = self;
  OUTLINED_FUNCTION_185();
  sub_1DC356C98();
}

- (void)assetsAvailableForLocale:(id)a3
{
  OUTLINED_FUNCTION_38_2();
  v5 = sub_1DC510C8C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  sub_1DC510C0C();
  v11 = v3;
  OUTLINED_FUNCTION_121();
  sub_1DC356CEC();

  (*(v8 + 8))(v4, v5);
}

- (void)assetsUnavailable
{
  v2 = self;
  OUTLINED_FUNCTION_185();
  sub_1DC357040();
}

- (void)assetsAvailableForLocale:(id)a3 withType:(int64_t)a4
{
  OUTLINED_FUNCTION_38_2();
  v6 = sub_1DC510C8C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  sub_1DC510C0C();
  v12 = v4;
  OUTLINED_FUNCTION_121();
  sub_1DC3571FC();

  (*(v9 + 8))(v5, v6);
}

- (void)assetsUnavailableWithType:(int64_t)a3
{
  v3 = self;
  OUTLINED_FUNCTION_185();
  sub_1DC357550();
}

@end