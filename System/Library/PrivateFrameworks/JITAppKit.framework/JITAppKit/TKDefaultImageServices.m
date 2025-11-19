@interface TKDefaultImageServices
+ (void)setup;
@end

@implementation TKDefaultImageServices

+ (void)setup
{
  v3 = &setup_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_2);
  if (*v3 != -1)
  {
    dispatch_once(v3, location);
  }

  objc_storeStrong(&location, 0);
}

uint64_t __31__TKDefaultImageServices_setup__block_invoke()
{
  [TKAdaptiveImageAPI registerService:@"original" handler:&__block_literal_global_4];
  [TKAdaptiveImageAPI registerService:@"scene7" handler:&__block_literal_global_9_0];
  [TKAdaptiveImageAPI registerService:@"akamai" handler:&__block_literal_global_60];
  return [TKAdaptiveImageAPI registerService:@"cloudinary" handler:&__block_literal_global_107];
}

id __31__TKDefaultImageServices_setup__block_invoke_2(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  location[6] = *&a4;
  location[7] = *&a5;
  location[2] = *&a6;
  location[3] = *&a7;
  location[4] = *&a8;
  location[5] = *&a9;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

id __31__TKDefaultImageServices_setup__block_invoke_3(void *a1, void *a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v30 = a4;
  v31 = a5;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = a10;
  v25[1] = a1;
  v25[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 1.0;
  v33.size.height = 1.0;
  if (!CGRectEqualToRect(v29, v33))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f, %f, %f", *&v29.origin.x, *&v29.origin.y, *&v29.size.width, *&v29.size.height];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v19);
  }

  v24 = v30;
  if (v30 > 0)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", v24];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v18);
  }

  v23 = v31;
  if (v31 > 0)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", v23];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v17);
  }

  if (v24 <= 0 && v23 <= 0)
  {
    [v25[0] setObject:@"1" forKeyedSubscript:@"scl"];
  }

  else
  {
    [v25[0] setObject:@"constrain forKeyedSubscript:{0", @"fit"}];
  }

  if (v27)
  {
    [v25[0] setObject:@"jpeg" forKeyedSubscript:@"fmt"];
    v16 = [TKUtils hexForColor:v27 withAlpha:0];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    [v25[0] setObject:@"png-alpha" forKeyedSubscript:@"fmt"];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", (v26 * 100.0)];
  [v25[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v11);
  v12 = location[0];
  v13 = v25[0];
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"wid", @"hei", @"scl", 0}];
  v15 = [TKUtils URL:"URL:withQueryParameters:addKeys:removeKeys:escape:" withQueryParameters:v12 addKeys:v13 removeKeys:&unk_286780EB0 escape:?];
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);

  return v15;
}

id __31__TKDefaultImageServices_setup__block_invoke_4(void *a1, void *a2, void *a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  v30 = a4;
  v31 = a5;
  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v27 = 0;
  objc_storeStrong(&v27, a3);
  v26 = a10;
  v25[1] = a1;
  v25[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 1.0;
  v33.size.height = 1.0;
  if (!CGRectEqualToRect(v29, v33))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%fxw:%fxh;%fxw, %fxh", *&v29.size.width, *&v29.size.height, *&v29.origin.x, *&v29.origin.y];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v19);
  }

  v24 = v30;
  v23 = v31;
  if (v30 <= 0 && v23 <= 0)
  {
    if (v24 > 0)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li:*", v24];
      [v25[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v17);
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"inside%%7C%li:%li", v24, v23];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v18);
  }

  if (v27)
  {
    [v25[0] setObject:@"jpg" forKeyedSubscript:@"output-format"];
    v16 = [TKUtils hexForColor:v27 withAlpha:0];
    [v25[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v16);
  }

  else
  {
    [v25[0] setObject:@"png" forKeyedSubscript:@"output-format"];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", (v26 * 100.0)];
  [v25[0] setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v11);
  [v25[0] setObject:@"progressive-bicubic" forKeyedSubscript:@"interpolation"];
  v12 = location[0];
  v13 = v25[0];
  v14 = [MEMORY[0x277CBEB98] setWithObjects:{@"fit", @"resize", 0}];
  v15 = [TKUtils URL:"URL:withQueryParameters:addKeys:removeKeys:escape:" withQueryParameters:v12 addKeys:v13 removeKeys:&unk_286780EC8 escape:?];
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);

  return v15;
}

id __31__TKDefaultImageServices_setup__block_invoke_5(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v32 = a4;
  v33 = a5;
  location[2] = *&a6;
  location[3] = *&a7;
  location[4] = *&a8;
  location[5] = *&a9;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = a10;
  v28[1] = a1;
  v28[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = v32;
  if (v32 > 0)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"w_%li", v27];
    [v28[0] addObject:?];
    MEMORY[0x277D82BD8](v21);
  }

  v26 = v33;
  if (v33 > 0)
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"h_%li", v26];
    [v28[0] addObject:?];
    MEMORY[0x277D82BD8](v20);
  }

  if (v27 > 0 && v26 > 0)
  {
    [v28[0] addObject:@"c_limit"];
  }

  if (v30)
  {
    [v28[0] addObject:@"f_jpg"];
    v17 = MEMORY[0x277CCACA8];
    v19 = [TKUtils hexForColor:v30 withAlpha:0];
    v18 = [v17 stringWithFormat:@"b_rgb:%@", v19];
    [v28[0] addObject:?];
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
  }

  else
  {
    [v28[0] addObject:@"f_png"];
  }

  v11 = v28[0];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"q_%li", (v29 * 100.0)];
  [v11 addObject:?];
  MEMORY[0x277D82BD8](v12);
  v25 = [v28[0] componentsJoinedByString:{@", "}];
  v15 = [location[0] URLByDeletingLastPathComponent];
  v14 = [v15 URLByAppendingPathComponent:v25];
  v13 = [location[0] lastPathComponent];
  v16 = [v14 URLByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);

  return v16;
}

@end