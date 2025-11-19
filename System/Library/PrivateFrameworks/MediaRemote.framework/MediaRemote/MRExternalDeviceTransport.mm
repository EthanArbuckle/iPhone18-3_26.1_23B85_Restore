@interface MRExternalDeviceTransport
- (BOOL)shouldUseSystemAuthenticationPrompt;
- (MRDeviceInfo)deviceInfo;
- (NSError)error;
- (NSString)hostname;
- (NSString)name;
- (id)createConnectionWithUserInfo:(id)a3;
- (int64_t)port;
- (void)resetWithError:(id)a3;
- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)a3;
@end

@implementation MRExternalDeviceTransport

- (MRDeviceInfo)deviceInfo
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport deviceInfo]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSString)name
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport name]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSString)hostname
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport hostname]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (int64_t)port
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport port]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)shouldUseSystemAuthenticationPrompt
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport shouldUseSystemAuthenticationPrompt]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport setShouldUseSystemAuthenticationPrompt:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NSError)error
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport error]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)createConnectionWithUserInfo:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport createConnectionWithUserInfo:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)resetWithError:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D930];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRExternalDeviceTransport resetWithError:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end