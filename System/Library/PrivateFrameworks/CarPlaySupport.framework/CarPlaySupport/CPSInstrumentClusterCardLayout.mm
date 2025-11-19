@interface CPSInstrumentClusterCardLayout
+ (id)layoutWithLayoutType:(unint64_t)a3;
- (CGRect)safeArea;
- (CGRect)viewArea;
- (CPSInstrumentClusterCardLayout)initWithCarScreenInfo:(id)a3 isRightHandDrive:(BOOL)a4;
- (CPSInstrumentClusterCardLayout)initWithLayout:(unint64_t)a3;
- (uint64_t)initWithSafeAreaFrame:(char)a3 viewAreaFrame:(CGFloat)a4 displayFrame:(CGFloat)a5 physicalPixelWidth:(CGFloat)a6 isRightHandDrive:(CGFloat)a7;
@end

@implementation CPSInstrumentClusterCardLayout

+ (id)layoutWithLayoutType:(unint64_t)a3
{
  v3 = [[CPSInstrumentClusterCardLayout alloc] initWithLayout:a3];

  return v3;
}

- (CPSInstrumentClusterCardLayout)initWithLayout:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v8 = a3;
  v10 = 0;
  v7.receiver = self;
  v7.super_class = CPSInstrumentClusterCardLayout;
  v5 = [(CPSInstrumentClusterCardLayout *)&v7 init];
  v10 = v5;
  objc_storeStrong(&v10, v5);
  if (v5)
  {
    v10->_layoutForCard = v8;
    oslog = CarPlaySupportGeneralLogging();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v11, v10->_layoutForCard);
      _os_log_impl(&dword_242FE8000, oslog, OS_LOG_TYPE_INFO, "Layout Calculation: Explicity using layout %lu", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (uint64_t)initWithSafeAreaFrame:(char)a3 viewAreaFrame:(CGFloat)a4 displayFrame:(CGFloat)a5 physicalPixelWidth:(CGFloat)a6 isRightHandDrive:(CGFloat)a7
{
  v65 = *MEMORY[0x277D85DE8];
  v61.origin.x = a4;
  v61.origin.y = a5;
  v61.size.width = a6;
  v61.size.height = a7;
  v60.origin.x = a8;
  v60.origin.y = a9;
  v60.size.width = a10;
  v60.size.height = a11;
  v59.origin.x = a12;
  v59.origin.y = a13;
  v59.size.width = a14;
  v59.size.height = a15;
  v57 = a2;
  v56 = a16;
  v55 = a3;
  v58 = 0;
  v54.receiver = a1;
  v54.super_class = CPSInstrumentClusterCardLayout;
  v36 = objc_msgSendSuper2(&v54, sel_init);
  v58 = v36;
  objc_storeStrong(&v58, v36);
  if (v36)
  {
    oslog = CarPlaySupportGeneralLogging();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      log = oslog;
      v31 = type;
      v35 = NSStringFromCGRect(v61);
      v27 = MEMORY[0x277D82BE0](v35);
      v51 = v27;
      v34 = NSStringFromCGRect(v60);
      v28 = MEMORY[0x277D82BE0](v34);
      v50 = v28;
      v33 = NSStringFromCGRect(v59);
      v29 = MEMORY[0x277D82BE0](v33);
      v49 = v29;
      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v56];
      __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v64, v27, v28, v29, v32);
      _os_log_impl(&dword_242FE8000, log, v31, "Layout Calculation: pixelSafeArea: %@, pixelViewArea: %@, pixelDisplayFrame: %@, pixelPhysicalWidth: %@", v64, 0x2Au);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v51, 0);
    }

    objc_storeStrong(&oslog, 0);
    v58[8] = 1;
    *(v58 + 24) = v61;
    *(v58 + 56) = v60;
    v48 = 0.153 / v56;
    if (v61.size.width < 660.0 * (0.153 / v56))
    {
      if (0.3 * v61.size.height <= 115.0 * v48)
      {
        *(v58 + 2) = 0;
        v40 = CarPlaySupportGeneralLogging();
        v39 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v23 = v40;
          v24 = v39;
          __os_log_helper_16_0_0(v38);
          _os_log_error_impl(&dword_242FE8000, v23, v24, "Layout Calculation: Using undefined layout", v38, 2u);
        }

        objc_storeStrong(&v40, 0);
      }

      else
      {
        *(v58 + 2) = 1;
        v43 = CarPlaySupportGeneralLogging();
        v42 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v25 = v43;
          v26 = v42;
          __os_log_helper_16_0_0(v41);
          _os_log_impl(&dword_242FE8000, v25, v26, "Layout Calculation: Using center layout", v41, 2u);
        }

        objc_storeStrong(&v43, 0);
      }
    }

    else
    {
      MidX = CGRectGetMidX(v61);
      v46 = CGRectGetMidX(v59);
      if (MidX >= v46)
      {
        if (MidX <= v46)
        {
          if (v55)
          {
            *(v58 + 2) = 3;
          }

          else
          {
            *(v58 + 2) = 2;
          }
        }

        else
        {
          *(v58 + 2) = 3;
        }
      }

      else
      {
        *(v58 + 2) = 2;
      }

      v45 = CarPlaySupportGeneralLogging();
      v44 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_4_0_8_0(v63, *&v61.size.width, COERCE__INT64(660.0 * v48), *&MidX, *&v46, v55 & 1, *(v58 + 2));
        _os_log_impl(&dword_242FE8000, v45, v44, "Layout Calculation: Safe area width %f is greater than %f. Safe area mid: %f, Display mid: %f. is RHD: %d. using layout %lu", v63, 0x3Au);
      }

      objc_storeStrong(&v45, 0);
    }

    if (v61.size.height <= 202.0)
    {
      v37 = CarPlaySupportGeneralLogging();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_0_2_8_0_8_0(v62, *&v61.size.height, 0x4069400000000000);
        _os_log_impl(&dword_242FE8000, v37, OS_LOG_TYPE_INFO, "Layout Calculation: Safe area height %f is less/equal to %f. Not showing ETA with turn card", v62, 0x16u);
      }

      objc_storeStrong(&v37, 0);
      v58[8] = 0;
    }
  }

  v22 = MEMORY[0x277D82BE0](v58);
  objc_storeStrong(&v58, 0);
  return v22;
}

- (CPSInstrumentClusterCardLayout)initWithCarScreenInfo:(id)a3 isRightHandDrive:(BOOL)a4
{
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = [location[0] currentViewArea];
  [v21 safeFrame];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  MEMORY[0x277D82BD8](v21);
  v22 = [location[0] currentViewArea];
  [v22 visibleFrame];
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  MEMORY[0x277D82BD8](v22);
  [location[0] pixelSize];
  [location[0] pixelSize];
  CGRectMake_4();
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  [location[0] physicalSize];
  v23 = v16;
  [location[0] pixelSize];
  v17 = v38;
  v38 = 0;
  v38 = [(CPSInstrumentClusterCardLayout *)v17 initWithSafeAreaFrame:a4 viewAreaFrame:v33 displayFrame:v34 physicalPixelWidth:v35 isRightHandDrive:v36, v29, v30, v31, v32, v25, v26, v27, v28, v23 / v18];
  v24 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v38, 0);
  return v24;
}

- (CGRect)safeArea
{
  y = self->_safeArea.origin.y;
  x = self->_safeArea.origin.x;
  height = self->_safeArea.size.height;
  width = self->_safeArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)viewArea
{
  y = self->_viewArea.origin.y;
  x = self->_viewArea.origin.x;
  height = self->_viewArea.size.height;
  width = self->_viewArea.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end