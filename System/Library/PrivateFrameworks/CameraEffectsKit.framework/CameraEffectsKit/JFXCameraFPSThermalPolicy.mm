@interface JFXCameraFPSThermalPolicy
- (NSString)description;
- (unint64_t)priority;
@end

@implementation JFXCameraFPSThermalPolicy

- (unint64_t)priority
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__JFXCameraFPSThermalPolicy_priority__block_invoke;
  v4[3] = &unk_278D79D48;
  v4[4] = self;
  v4[5] = &v5;
  [JFXThermalMonitor enumerateThermalPressureLevel:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __37__JFXCameraFPSThermalPolicy_priority__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = [*(a1 + 32) cameraFPSForThermalLevel:a2 deviceType:0 minRate:&v4 + 4 maxRate:&v4];
  *(*(*(a1 + 40) + 8) + 24) += v4;
  return result;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__0;
  v12 = __Block_byref_object_dispose__0;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Priority %lu):", v4, -[JFXCameraFPSThermalPolicy priority](self, "priority")];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__JFXCameraFPSThermalPolicy_description__block_invoke;
  v7[3] = &unk_278D79D48;
  v7[4] = self;
  v7[5] = &v8;
  [JFXThermalMonitor enumerateThermalPressureLevel:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__JFXCameraFPSThermalPolicy_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v10 = 0;
  [*(a1 + 32) cameraFPSForThermalLevel:a2 deviceType:0 minRate:&v11 maxRate:&v10];
  v4 = MEMORY[0x277CCACA8];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [JFXThermalMonitor stringFromThermalPressureLevel:a2];
  v7 = [v4 stringWithFormat:@"%@ %@ [ %d - %d ]", v5, v6, v11, v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end