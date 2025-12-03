@interface MRCryptoPairingSession
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)deleteIdentityWithError:(id *)error;
- (BOOL)isPaired;
- (BOOL)isValid;
- (MRCryptoPairingSession)init;
- (MRCryptoPairingSession)initWithRole:(unint64_t)role device:(id)device;
- (MRCryptoPairingSessionDelegate)delegate;
- (NSArray)pairedDevices;
- (id)decryptData:(id)data withError:(id *)error;
- (id)encryptData:(id)data withError:(id *)error;
- (id)removePeer;
- (id)updatePeer;
- (void)close;
- (void)handlePairingExchangeData:(id)data completion:(id)completion;
- (void)handlePairingFailureWithStatus:(int)status;
- (void)open;
@end

@implementation MRCryptoPairingSession

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MRCryptoPairingSession *)MRCoreUtilsPairingSession allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MRCryptoPairingSession;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (MRCryptoPairingSession)initWithRole:(unint64_t)role device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MRCryptoPairingSession;
  v8 = [(MRCryptoPairingSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_role = role;
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (MRCryptoPairingSession)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = NSStringFromSelector(sel_initWithRole_device_);
  [v3 raise:v4 format:{@"use %@ instead", v5}];

  return 0;
}

- (BOOL)isPaired
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession isPaired]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (BOOL)isValid
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession isValid]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (NSArray)pairedDevices
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession pairedDevices]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)open
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession open]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)close
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession close]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)removePeer
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession removePeer]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)updatePeer
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession updatePeer]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (void)handlePairingExchangeData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D930];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession handlePairingExchangeData:completion:]"];
  v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)handlePairingFailureWithStatus:(int)status
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession handlePairingFailureWithStatus:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)encryptData:(id)data withError:(id *)error
{
  dataCopy = data;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession encryptData:withError:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)decryptData:(id)data withError:(id *)error
{
  dataCopy = data;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession decryptData:withError:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)deleteIdentityWithError:(id *)error
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is abstract", "-[MRCryptoPairingSession deleteIdentityWithError:]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (MRCryptoPairingSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end