@interface CDMClientNotification
- (void)assetsAvailable;
- (void)assetsAvailableForLocale:(id)locale;
- (void)assetsAvailableForLocale:(id)locale withType:(int64_t)type;
- (void)assetsUnavailable;
- (void)assetsUnavailableWithType:(int64_t)type;
- (void)processCDMNluRequestCallback:(id)callback;
- (void)processCDMNluRequestErrorCallback:(id)callback error:(id)error;
@end

@implementation CDMClientNotification

- (void)processCDMNluRequestErrorCallback:(id)callback error:(id)error
{
  callbackCopy = callback;
  errorCopy = error;
  selfCopy = self;
  OUTLINED_FUNCTION_162();
  sub_1DC356380();
}

- (void)processCDMNluRequestCallback:(id)callback
{
  callbackCopy = callback;
  selfCopy = self;
  sub_1DC3568E0();
}

- (void)assetsAvailable
{
  selfCopy = self;
  OUTLINED_FUNCTION_185();
  sub_1DC356C98();
}

- (void)assetsAvailableForLocale:(id)locale
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
  selfCopy = self;
  OUTLINED_FUNCTION_185();
  sub_1DC357040();
}

- (void)assetsAvailableForLocale:(id)locale withType:(int64_t)type
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

- (void)assetsUnavailableWithType:(int64_t)type
{
  selfCopy = self;
  OUTLINED_FUNCTION_185();
  sub_1DC357550();
}

@end