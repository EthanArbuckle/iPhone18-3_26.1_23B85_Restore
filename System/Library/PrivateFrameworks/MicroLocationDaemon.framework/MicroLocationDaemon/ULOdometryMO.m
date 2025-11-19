@interface ULOdometryMO
+ (id)createFromDO:(const void *)a3 loiMO:(id)a4 inManagedObjectContext:(id)a5;
- (optional<ULOdometryDO>)convertToDO;
@end

@implementation ULOdometryMO

+ (id)createFromDO:(const void *)a3 loiMO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[ULOdometryMO alloc] initWithContext:v8];
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  [(ULOdometryMO *)v9 setDeviceIdentifier:v11];

  LODWORD(v12) = llroundf(*(a3 + 6) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionX:v12];
  LODWORD(v13) = llroundf(*(a3 + 7) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionY:v13];
  LODWORD(v14) = llroundf(*(a3 + 8) * 128.0);
  [(ULOdometryMO *)v9 setDeltaPositionZ:v14];
  [(ULOdometryMO *)v9 setTimestamp:*(a3 + 5)];
  [(ULOdometryMO *)v9 setTrajectoryUUID:*(a3 + 6)];
  [(ULOdometryMO *)v9 setOdometrySourceType:*(a3 + 28)];
  [(ULOdometryMO *)v9 setLoi:v7];

  return v9;
}

- (optional<ULOdometryDO>)convertToDO
{
  v5 = [(ULOdometryMO *)self deviceIdentifier];
  v6 = v5;
  if (v5)
  {
    [v5 stdString];
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  if ((v20[24] & 1) == 0)
  {
    v7 = [MEMORY[0x277D28868] deviceClass];
    __p[0] = [v7 UTF8String];
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(v20, __p);

    if ((v20[24] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }
  }

  v8 = [(ULOdometryMO *)self deltaPositionX];
  v9 = [(ULOdometryMO *)self deltaPositionY];
  v10 = [(ULOdometryMO *)self deltaPositionZ];
  [(ULOdometryMO *)self timestamp];
  v12 = v11;
  v13 = [(ULOdometryMO *)self trajectoryUUID];
  ULOdometryDO::ULOdometryDO(__p, v20, v13, [(ULOdometryMO *)self odometrySourceType], vcvts_n_f32_s32(v8, 7uLL), vcvts_n_f32_s32(v9, 7uLL), vcvts_n_f32_s32(v10, 7uLL), v12);
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