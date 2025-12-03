@interface ULOdometryMO
+ (id)createFromDO:(const void *)o loiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULOdometryDO>)convertToDO;
@end

@implementation ULOdometryMO

+ (id)createFromDO:(const void *)o loiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULOdometryMO alloc] initWithContext:contextCopy];
  if (*(o + 23) >= 0)
  {
    oCopy = o;
  }

  else
  {
    oCopy = *o;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:oCopy];
  [(ULOdometryMO *)v9 setDeviceIdentifier:v11];

  LODWORD(v12) = llroundf(*(o + 6) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionX:v12];
  LODWORD(v13) = llroundf(*(o + 7) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionY:v13];
  LODWORD(v14) = llroundf(*(o + 8) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionZ:v14];
  [(ULOdometryMO *)v9 setTimestamp:*(o + 5)];
  [(ULOdometryMO *)v9 setTrajectoryUUID:*(o + 6)];
  [(ULOdometryMO *)v9 setOdometrySourceType:*(o + 28)];
  [(ULOdometryMO *)v9 setLoi:mOCopy];

  return v9;
}

- (optional<ULOdometryDO>)convertToDO
{
  deviceIdentifier = [(ULOdometryMO *)self deviceIdentifier];
  v6 = deviceIdentifier;
  if (deviceIdentifier)
  {
    [deviceIdentifier stdString];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  if ((v20[24] & 1) == 0)
  {
    deviceClass = [MEMORY[0x277D28868] deviceClass];
    __p[0] = [deviceClass UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v20, __p);

    if ((v20[24] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  deltaPositionX = [(ULOdometryMO *)self deltaPositionX];
  deltaPositionY = [(ULOdometryMO *)self deltaPositionY];
  deltaPositionZ = [(ULOdometryMO *)self deltaPositionZ];
  [(ULOdometryMO *)self timestamp];
  v12 = v11;
  trajectoryUUID = [(ULOdometryMO *)self trajectoryUUID];
  ULOdometryDO::ULOdometryDO(__p, v20, trajectoryUUID, [(ULOdometryMO *)self odometrySourceType], vcvts_n_f32_s32(deltaPositionX, 7uLL), vcvts_n_f32_s32(deltaPositionY, 7uLL), vcvts_n_f32_s32(deltaPositionZ, 7uLL), v12);
  *&retstr->var0.var0 = *__p;
  *(&retstr->var0.var1.var0.var0.var1 + 2) = v16;
  __p[0] = 0;
  __p[1] = 0;
  *&retstr->var1 = v17;
  *&retstr[1].var0.var0 = v18;
  v16 = 0;
  *(&v18 + 1) = 0;
  *(&retstr[1].var0.var1.var0.var0.var1 + 2) = v19;
  LOBYTE(retstr[1].var1) = 1;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v20[24] == 1 && (v20[23] & 0x80000000) != 0)
  {
    operator delete(*v20);
  }

  return result;
}

@end