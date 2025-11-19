@interface MXIProcessParameters
- (MXIProcessParameters)init;
- (__n128)setProjection:(__n128)a3;
@end

@implementation MXIProcessParameters

- (MXIProcessParameters)init
{
  v12.receiver = self;
  v12.super_class = MXIProcessParameters;
  v2 = [(MXIProcessParameters *)&v12 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_setProjection_(v2, v3, v4, v5, v6, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
    objc_msgSend_setLinearDepth_(v7, v8, 1, v9, v10);
  }

  return v7;
}

- (__n128)setProjection:(__n128)a3
{
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end