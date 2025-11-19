@interface NTKVideoListingFactory
- (id)_initLibraryForDevice:(id)a3;
- (id)_listingWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5;
- (id)_listingsWithTheme:(unint64_t)a3;
- (id)_listingsWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4;
- (id)_listingsWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4 matchingTag:(unint64_t)a5;
- (id)_listingsWithTheme:(unint64_t)a3 variant:(int64_t)a4;
- (id)_listingsWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5 notMatchingClip:(int64_t)a6;
- (id)anyListingWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4 matchingTag:(unint64_t)a5;
- (id)anyListingWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5 notMatchingClip:(int64_t)a6;
- (id)defaultListingWithTheme:(unint64_t)a3;
- (id)posterImageWithTheme:(unint64_t)a3;
- (int64_t)behaviorForTheme:(unint64_t)a3;
- (void)discardAssets;
@end

@implementation NTKVideoListingFactory

id __50__NTKVideoListingFactory_sharedInstanceForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_52);
  if (_block_invoke___cachedDevice_52)
  {
    v3 = _block_invoke___cachedDevice_52 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != _block_invoke___previousCLKDeviceVersion_52))
  {
    _block_invoke___cachedDevice_52 = v2;
    _block_invoke___previousCLKDeviceVersion_52 = [v2 version];
    v5 = __50__NTKVideoListingFactory_sharedInstanceForDevice___block_invoke_2(_block_invoke___previousCLKDeviceVersion_52, v2);
    v6 = _block_invoke_value_37;
    _block_invoke_value_37 = v5;
  }

  v7 = _block_invoke_value_37;
  os_unfair_lock_unlock(&_block_invoke_lock_52);

  return v7;
}

id __50__NTKVideoListingFactory_sharedInstanceForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NTKVideoListingFactory alloc] _initLibraryForDevice:v2];

  return v3;
}

- (id)defaultListingWithTheme:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(NTKVideoListingFactory *)self _listingsWithTheme:a3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 hasTag:{1, v9}])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)anyListingWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5 notMatchingClip:(int64_t)a6
{
  v6 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3 variant:a4 tag:a5 notMatchingClip:a6];
  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v6, "count"))}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)anyListingWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4 matchingTag:(unint64_t)a5
{
  v5 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3 notMatchingVariant:a4 matchingTag:a5];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v5, "count"))}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)posterImageWithTheme:(unint64_t)a3
{
  if (a3 <= 2)
  {
    NTKImageNamedFromAssetsBundle(off_278784488[a3]);
  }

  NTKImageNamedFromAssetsBundle(0);
}

- (int64_t)behaviorForTheme:(unint64_t)a3
{
  if (a3 <= 2)
  {
    return 4 - a3;
  }

  else
  {
    return 2;
  }
}

- (id)_initLibraryForDevice:(id)a3
{
  v331[52] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v326.receiver = self;
  v326.super_class = NTKVideoListingFactory;
  v6 = [(NTKVideoListingFactory *)&v326 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = objc_opt_new();
    assetListings = v7->_assetListings;
    v7->_assetListings = v8;

    v330[0] = &unk_2841836E8;
    v322 = v5;
    v318 = [MEMORY[0x277D75348] colorWithRed:0.862745098 green:1.0 blue:0.980392157 alpha:1.0];
    v331[0] = v318;
    v330[1] = &unk_284183700;
    v314 = [MEMORY[0x277D75348] colorWithRed:0.811764706 green:? blue:? alpha:?];
    v331[1] = v314;
    v330[2] = &unk_284183718;
    v310 = [MEMORY[0x277D75348] colorWithRed:0.717647059 green:0.925490196 blue:1.0 alpha:1.0];
    v331[2] = v310;
    v330[3] = &unk_284183730;
    v307 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.980392157 blue:0.862745098 alpha:1.0];
    v331[3] = v307;
    v330[4] = &unk_284183748;
    v304 = [MEMORY[0x277D75348] colorWithRed:0.819607843 green:0.858823529 blue:0.988235294 alpha:1.0];
    v331[4] = v304;
    v330[5] = &unk_284183760;
    v301 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.82745098 blue:0.780392157 alpha:1.0];
    v331[5] = v301;
    v330[6] = &unk_284183778;
    v298 = [MEMORY[0x277D75348] colorWithRed:? green:? blue:? alpha:?];
    v331[6] = v298;
    v330[7] = &unk_284183790;
    v295 = [MEMORY[0x277D75348] colorWithRed:0.898039216 green:0.898039216 blue:0.898039216 alpha:1.0];
    v331[7] = v295;
    v330[8] = &unk_2841837A8;
    v292 = [MEMORY[0x277D75348] colorWithRed:0.749019608 green:0.847058824 blue:0.815686275 alpha:1.0];
    v331[8] = v292;
    v330[9] = &unk_2841837C0;
    v289 = [MEMORY[0x277D75348] colorWithRed:0.988235294 green:? blue:? alpha:?];
    v331[9] = v289;
    v330[10] = &unk_2841837D8;
    v286 = [MEMORY[0x277D75348] colorWithRed:0.941176471 green:1.0 blue:0.745098039 alpha:1.0];
    v331[10] = v286;
    v330[11] = &unk_2841837F0;
    v283 = [MEMORY[0x277D75348] colorWithRed:0.996078431 green:0.984313725 blue:0.717647059 alpha:1.0];
    v331[11] = v283;
    v330[12] = &unk_284183808;
    v280 = [MEMORY[0x277D75348] colorWithRed:0.870588235 green:0.870588235 blue:1.0 alpha:1.0];
    v331[12] = v280;
    v330[13] = &unk_284183820;
    v277 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.866666667 blue:0.580392157 alpha:1.0];
    v331[13] = v277;
    v330[14] = &unk_284183838;
    v275 = [MEMORY[0x277D75348] colorWithRed:0.831372549 green:0.941176471 blue:0.654901961 alpha:1.0];
    v331[14] = v275;
    v330[15] = &unk_284183850;
    v273 = [MEMORY[0x277D75348] colorWithRed:0.917647059 green:0.894117647 blue:0.564705882 alpha:1.0];
    v331[15] = v273;
    v330[16] = &unk_284183868;
    v271 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.509803922 blue:0.470588235 alpha:1.0];
    v331[16] = v271;
    v330[17] = &unk_284183880;
    v269 = [MEMORY[0x277D75348] colorWithRed:0.874509804 green:0.898039216 blue:0.933333333 alpha:1.0];
    v331[17] = v269;
    v330[18] = &unk_284183898;
    v266 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.898039216 blue:0.568627451 alpha:1.0];
    v331[18] = v266;
    v330[19] = &unk_2841838B0;
    v264 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.929411765 blue:? alpha:?];
    v331[19] = v264;
    v330[20] = &unk_2841838C8;
    v262 = [MEMORY[0x277D75348] colorWithRed:0.921568627 green:0.921568627 blue:0.921568627 alpha:1.0];
    v331[20] = v262;
    v330[21] = &unk_2841838E0;
    v259 = [MEMORY[0x277D75348] colorWithRed:0.823529412 green:0.823529412 blue:0.705882353 alpha:1.0];
    v331[21] = v259;
    v330[22] = &unk_2841838F8;
    v257 = [MEMORY[0x277D75348] colorWithRed:0.862745098 green:1.0 blue:0.960784314 alpha:1.0];
    v331[22] = v257;
    v330[23] = &unk_284183910;
    v255 = [MEMORY[0x277D75348] colorWithRed:0.823529412 green:0.823529412 blue:1.0 alpha:1.0];
    v331[23] = v255;
    v330[24] = &unk_284183928;
    v252 = [MEMORY[0x277D75348] colorWithRed:0.705882353 green:0.980392157 blue:1.0 alpha:1.0];
    v331[24] = v252;
    v330[25] = &unk_284183940;
    v250 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.823529412 blue:0.901960784 alpha:1.0];
    v331[25] = v250;
    v330[26] = &unk_284183958;
    v247 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.823529412 blue:0.901960784 alpha:1.0];
    v331[26] = v247;
    v330[27] = &unk_284183970;
    v243 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.823529412 blue:0.901960784 alpha:1.0];
    v331[27] = v243;
    v330[28] = &unk_284183988;
    v241 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.823529412 blue:0.901960784 alpha:1.0];
    v331[28] = v241;
    v330[29] = &unk_2841839A0;
    v239 = [MEMORY[0x277D75348] colorWithRed:0.725490196 green:0.909803922 blue:1.0 alpha:1.0];
    v331[29] = v239;
    v330[30] = &unk_2841839B8;
    v237 = [MEMORY[0x277D75348] colorWithRed:0.725490196 green:0.909803922 blue:1.0 alpha:1.0];
    v331[30] = v237;
    v330[31] = &unk_2841839D0;
    v235 = [MEMORY[0x277D75348] colorWithRed:0.725490196 green:0.909803922 blue:1.0 alpha:1.0];
    v331[31] = v235;
    v330[32] = &unk_2841839E8;
    v233 = [MEMORY[0x277D75348] colorWithRed:0.725490196 green:0.909803922 blue:1.0 alpha:1.0];
    v331[32] = v233;
    v330[33] = &unk_284183A00;
    v231 = [MEMORY[0x277D75348] colorWithRed:0.705882353 green:0.870588235 blue:1.0 alpha:1.0];
    v331[33] = v231;
    v330[34] = &unk_284183A18;
    v229 = [MEMORY[0x277D75348] colorWithRed:0.705882353 green:0.870588235 blue:1.0 alpha:1.0];
    v331[34] = v229;
    v330[35] = &unk_284183A30;
    v226 = [MEMORY[0x277D75348] colorWithRed:0.745098039 green:0.980392157 blue:1.0 alpha:1.0];
    v331[35] = v226;
    v330[36] = &unk_284183A48;
    v224 = [MEMORY[0x277D75348] colorWithRed:0.745098039 green:0.980392157 blue:1.0 alpha:1.0];
    v331[36] = v224;
    v330[37] = &unk_284183A60;
    v222 = [MEMORY[0x277D75348] colorWithRed:0.745098039 green:0.980392157 blue:1.0 alpha:1.0];
    v331[37] = v222;
    v330[38] = &unk_284183A78;
    v220 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.988235294 blue:1.0 alpha:1.0];
    v331[38] = v220;
    v330[39] = &unk_284183A90;
    v245 = [MEMORY[0x277D75348] colorWithRed:0.670588235 green:0.988235294 blue:1.0 alpha:1.0];
    v331[39] = v245;
    v330[40] = &unk_284183AA8;
    v218 = [MEMORY[0x277D75348] colorWithRed:0.549019608 green:0.878431373 blue:1.0 alpha:1.0];
    v331[40] = v218;
    v330[41] = &unk_284183AC0;
    v216 = [MEMORY[0x277D75348] colorWithRed:0.549019608 green:0.878431373 blue:1.0 alpha:1.0];
    v331[41] = v216;
    v330[42] = &unk_284183AD8;
    v214 = [MEMORY[0x277D75348] colorWithRed:0.745098039 green:0.980392157 blue:1.0 alpha:1.0];
    v331[42] = v214;
    v330[43] = &unk_284183AF0;
    v212 = [MEMORY[0x277D75348] colorWithRed:0.745098039 green:0.980392157 blue:1.0 alpha:1.0];
    v331[43] = v212;
    v330[44] = &unk_284183B08;
    v10 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.862745098 blue:0.862745098 alpha:1.0];
    v331[44] = v10;
    v330[45] = &unk_284183B20;
    v11 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.952941176 blue:0.921568627 alpha:1.0];
    v331[45] = v11;
    v330[46] = &unk_284183B38;
    v12 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.784313725 blue:0.862745098 alpha:1.0];
    v331[46] = v12;
    v330[47] = &unk_284183B50;
    v13 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.8 blue:0.8 alpha:1.0];
    v331[47] = v13;
    v330[48] = &unk_284183B68;
    v14 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.901960784 blue:0.941176471 alpha:1.0];
    v331[48] = v14;
    v330[49] = &unk_284183B80;
    v15 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.941176471 blue:0.705882353 alpha:1.0];
    v331[49] = v15;
    v330[50] = &unk_284183B98;
    v16 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.823529412 blue:0.666666667 alpha:1.0];
    v331[50] = v16;
    v330[51] = &unk_284183BB0;
    v17 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.941176471 blue:0.62745098 alpha:1.0];
    v331[51] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v331 forKeys:v330 count:52];

    v19 = [v18 objectForKeyedSubscript:&unk_2841836E8];
    v323 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"01-P-Blumei-H264" videoName:@"01-P-Blumei-H264-A" transitionImageName:@"motion-black" overlayColor:v19 theme:0 variant:5 clip:1 tags:4];

    v329[0] = v323;
    v20 = [v18 objectForKeyedSubscript:&unk_2841836E8];
    v319 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"01-P-Blumei-H264" videoName:@"01-P-Blumei-H264-B" transitionImageName:@"01-P-Blumei-H264" overlayColor:v20 theme:0 variant:5 clip:2 tags:2];

    v329[1] = v319;
    v21 = [v18 objectForKeyedSubscript:&unk_2841836E8];
    v315 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"01-P-Blumei-H264" videoName:@"01-P-Blumei-H264-E" transitionImageName:@"01-P-Blumei-H264" overlayColor:v21 theme:0 variant:5 clip:3 tags:2];

    v329[2] = v315;
    v22 = [v18 objectForKeyedSubscript:&unk_2841836E8];
    v311 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"01-P-Blumei-H264" videoName:@"01-P-Blumei-H264-F" transitionImageName:@"01-P-Blumei-H264" overlayColor:v22 theme:0 variant:5 clip:4 tags:2];

    v329[3] = v311;
    v23 = [v18 objectForKeyedSubscript:&unk_284183700];
    v308 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"02-A-Luna-H264" videoName:@"02-A-Luna-H264-A" transitionImageName:@"motion-black" overlayColor:v23 theme:0 variant:15 clip:1 tags:4];

    v329[4] = v308;
    v24 = [v18 objectForKeyedSubscript:&unk_284183700];
    v305 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"02-A-Luna-H264" videoName:@"02-A-Luna-H264-B" transitionImageName:@"02-A-Luna-H264" overlayColor:v24 theme:0 variant:15 clip:2 tags:2];

    v329[5] = v305;
    v25 = [v18 objectForKeyedSubscript:&unk_284183700];
    v302 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"02-A-Luna-H264" videoName:@"02-A-Luna-H264-E" transitionImageName:@"02-A-Luna-H264" overlayColor:v25 theme:0 variant:15 clip:3 tags:2];

    v329[6] = v302;
    v26 = [v18 objectForKeyedSubscript:&unk_284183700];
    v299 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"02-A-Luna-H264" videoName:@"02-A-Luna-H264-F" transitionImageName:@"02-A-Luna-H264" overlayColor:v26 theme:0 variant:15 clip:4 tags:2];

    v329[7] = v299;
    v27 = [v18 objectForKeyedSubscript:&unk_284183718];
    v296 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"03-M-Menelaus-H264" videoName:@"03-M-Menelaus-H264-A" transitionImageName:@"motion-black" overlayColor:v27 theme:0 variant:16 clip:1 tags:4];

    v329[8] = v296;
    v28 = [v18 objectForKeyedSubscript:&unk_284183718];
    v293 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"03-M-Menelaus-H264" videoName:@"03-M-Menelaus-H264-B" transitionImageName:@"03-M-Menelaus-H264" overlayColor:v28 theme:0 variant:16 clip:2 tags:2];

    v329[9] = v293;
    v29 = [v18 objectForKeyedSubscript:&unk_284183718];
    v290 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"03-M-Menelaus-H264" videoName:@"03-M-Menelaus-H264-E" transitionImageName:@"03-M-Menelaus-H264" overlayColor:v29 theme:0 variant:16 clip:3 tags:2];

    v329[10] = v290;
    v30 = [v18 objectForKeyedSubscript:&unk_284183718];
    v287 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"03-M-Menelaus-H264" videoName:@"03-M-Menelaus-H264-F" transitionImageName:@"03-M-Menelaus-H264" overlayColor:v30 theme:0 variant:16 clip:4 tags:2];

    v329[11] = v287;
    v31 = [v18 objectForKeyedSubscript:&unk_284183730];
    v284 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"04-O-Paradisea-H264" videoName:@"04-O-Paradisea-H264-A" transitionImageName:@"motion-black" overlayColor:v31 theme:0 variant:18 clip:1 tags:4];

    v329[12] = v284;
    v32 = [v18 objectForKeyedSubscript:&unk_284183730];
    v281 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"04-O-Paradisea-H264" videoName:@"04-O-Paradisea-H264-B" transitionImageName:@"04-O-Paradisea-H264" overlayColor:v32 theme:0 variant:18 clip:2 tags:2];

    v329[13] = v281;
    v33 = [v18 objectForKeyedSubscript:&unk_284183730];
    v278 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"04-O-Paradisea-H264" videoName:@"04-O-Paradisea-H264-E" transitionImageName:@"04-O-Paradisea-H264" overlayColor:v33 theme:0 variant:18 clip:3 tags:2];

    v329[14] = v278;
    v34 = [v18 objectForKeyedSubscript:&unk_284183730];
    v276 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"04-O-Paradisea-H264" videoName:@"04-O-Paradisea-H264-F" transitionImageName:@"04-O-Paradisea-H264" overlayColor:v34 theme:0 variant:18 clip:4 tags:2];

    v329[15] = v276;
    v35 = [v18 objectForKeyedSubscript:&unk_284183748];
    v274 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"05-K-Limborgii-H264" videoName:@"05-K-Limborgii-H264-A" transitionImageName:@"motion-black" overlayColor:v35 theme:0 variant:14 clip:1 tags:4];

    v329[16] = v274;
    v36 = [v18 objectForKeyedSubscript:&unk_284183748];
    v272 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"05-K-Limborgii-H264" videoName:@"05-K-Limborgii-H264-B" transitionImageName:@"05-K-Limborgii-H264" overlayColor:v36 theme:0 variant:14 clip:2 tags:2];

    v329[17] = v272;
    v37 = [v18 objectForKeyedSubscript:&unk_284183748];
    v270 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"05-K-Limborgii-H264" videoName:@"05-K-Limborgii-H264-E" transitionImageName:@"05-K-Limborgii-H264" overlayColor:v37 theme:0 variant:14 clip:3 tags:2];

    v329[18] = v270;
    v38 = [v18 objectForKeyedSubscript:&unk_284183748];
    v268 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"05-K-Limborgii-H264" videoName:@"05-K-Limborgii-H264-F" transitionImageName:@"05-K-Limborgii-H264" overlayColor:v38 theme:0 variant:14 clip:4 tags:2];

    v329[19] = v268;
    v39 = [v18 objectForKeyedSubscript:&unk_284183760];
    v267 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-A-Atlas-H264" videoName:@"06-A-Atlas-H264-A" transitionImageName:@"motion-black" overlayColor:v39 theme:0 variant:3 clip:1 tags:4];

    v329[20] = v267;
    v40 = [v18 objectForKeyedSubscript:&unk_284183760];
    v265 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-A-Atlas-H264" videoName:@"06-A-Atlas-H264-B" transitionImageName:@"06-A-Atlas-H264" overlayColor:v40 theme:0 variant:3 clip:2 tags:2];

    v329[21] = v265;
    v41 = [v18 objectForKeyedSubscript:&unk_284183760];
    v263 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-A-Atlas-H264" videoName:@"06-A-Atlas-H264-E" transitionImageName:@"06-A-Atlas-H264" overlayColor:v41 theme:0 variant:3 clip:3 tags:2];

    v329[22] = v263;
    v42 = [v18 objectForKeyedSubscript:&unk_284183760];
    v261 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-A-Atlas-H264" videoName:@"06-A-Atlas-H264-F" transitionImageName:@"06-A-Atlas-H264" overlayColor:v42 theme:0 variant:3 clip:4 tags:2];

    v329[23] = v261;
    v43 = [v18 objectForKeyedSubscript:&unk_284183778];
    v260 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"07-J-Rhadama-H264" videoName:@"07-J-Rhadama-H264-A" transitionImageName:@"motion-black" overlayColor:v43 theme:0 variant:19 clip:1 tags:4];

    v329[24] = v260;
    v44 = [v18 objectForKeyedSubscript:&unk_284183778];
    v258 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"07-J-Rhadama-H264" videoName:@"07-J-Rhadama-H264-B" transitionImageName:@"07-J-Rhadama-H264" overlayColor:v44 theme:0 variant:19 clip:2 tags:2];

    v329[25] = v258;
    v45 = [v18 objectForKeyedSubscript:&unk_284183778];
    v256 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"07-J-Rhadama-H264" videoName:@"07-J-Rhadama-H264-E" transitionImageName:@"07-J-Rhadama-H264" overlayColor:v45 theme:0 variant:19 clip:3 tags:2];

    v329[26] = v256;
    v46 = [v18 objectForKeyedSubscript:&unk_284183778];
    v254 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"07-J-Rhadama-H264" videoName:@"07-J-Rhadama-H264-F" transitionImageName:@"07-J-Rhadama-H264" overlayColor:v46 theme:0 variant:19 clip:4 tags:2];

    v329[27] = v254;
    v47 = [v18 objectForKeyedSubscript:&unk_284183790];
    v253 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"08-I-Idaeoides-H264" videoName:@"08-I-Idaeoides-H264-A" transitionImageName:@"motion-black" overlayColor:v47 theme:0 variant:10 clip:1 tags:4];

    v329[28] = v253;
    v48 = [v18 objectForKeyedSubscript:&unk_284183790];
    v251 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"08-I-Idaeoides-H264" videoName:@"08-I-Idaeoides-H264-B" transitionImageName:@"08-I-Idaeoides-H264" overlayColor:v48 theme:0 variant:10 clip:2 tags:3];

    v329[29] = v251;
    v49 = [v18 objectForKeyedSubscript:&unk_284183790];
    v249 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"08-I-Idaeoides-H264" videoName:@"08-I-Idaeoides-H264-E" transitionImageName:@"08-I-Idaeoides-H264" overlayColor:v49 theme:0 variant:10 clip:3 tags:2];

    v329[30] = v249;
    v50 = [v18 objectForKeyedSubscript:&unk_284183790];
    v248 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"08-I-Idaeoides-H264" videoName:@"08-I-Idaeoides-H264-F" transitionImageName:@"08-I-Idaeoides-H264" overlayColor:v50 theme:0 variant:10 clip:4 tags:2];

    v329[31] = v248;
    v51 = [v18 objectForKeyedSubscript:&unk_2841837A8];
    v246 = [NTKVideoListing initForDevice:"initForDevice:withName:videoName:transitionImageName:overlayColor:theme:variant:clip:tags:" withName:v7->_device videoName:@"09-A-Beatifica-H264" transitionImageName:@"09-A-Beatifica-H264-A" overlayColor:4 theme:1 variant:4 clip:? tags:?];

    v329[32] = v246;
    v52 = [v18 objectForKeyedSubscript:&unk_2841837A8];
    v244 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"09-A-Beatifica-H264" videoName:@"09-A-Beatifica-H264-B" transitionImageName:@"09-A-Beatifica-H264" overlayColor:v52 theme:0 variant:4 clip:2 tags:2];

    v329[33] = v244;
    v53 = [v18 objectForKeyedSubscript:&unk_2841837A8];
    v242 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"09-A-Beatifica-H264" videoName:@"09-A-Beatifica-H264-E" transitionImageName:@"09-A-Beatifica-H264" overlayColor:v53 theme:0 variant:4 clip:3 tags:2];

    v329[34] = v242;
    v54 = [v18 objectForKeyedSubscript:&unk_2841837A8];
    v240 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"09-A-Beatifica-H264" videoName:@"09-A-Beatifica-H264-F" transitionImageName:@"09-A-Beatifica-H264" overlayColor:v54 theme:0 variant:4 clip:4 tags:2];

    v329[35] = v240;
    v55 = [v18 objectForKeyedSubscript:&unk_2841837C0];
    v238 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"10-C-Lechenaulti-H264" videoName:@"10-C-Lechenaulti-H264-A" transitionImageName:@"motion-black" overlayColor:v55 theme:0 variant:12 clip:1 tags:4];

    v329[36] = v238;
    v56 = [v18 objectForKeyedSubscript:&unk_2841837C0];
    v236 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"10-C-Lechenaulti-H264" videoName:@"10-C-Lechenaulti-H264-B" transitionImageName:@"10-C-Lechenaulti-H264" overlayColor:v56 theme:0 variant:12 clip:2 tags:2];

    v329[37] = v236;
    v57 = [v18 objectForKeyedSubscript:&unk_2841837C0];
    v234 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"10-C-Lechenaulti-H264" videoName:@"10-C-Lechenaulti-H264-E" transitionImageName:@"10-C-Lechenaulti-H264" overlayColor:v57 theme:0 variant:12 clip:3 tags:2];

    v329[38] = v234;
    v58 = [v18 objectForKeyedSubscript:&unk_2841837C0];
    v232 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"10-C-Lechenaulti-H264" videoName:@"10-C-Lechenaulti-H264-F" transitionImageName:@"10-C-Lechenaulti-H264" overlayColor:v58 theme:0 variant:12 clip:4 tags:2];

    v329[39] = v232;
    v59 = [v18 objectForKeyedSubscript:&unk_2841837D8];
    v230 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"11-G-Weiskei-H264" videoName:@"11-G-Weiskei-H264-A" transitionImageName:@"motion-black" overlayColor:v59 theme:0 variant:25 clip:1 tags:4];

    v329[40] = v230;
    v60 = [v18 objectForKeyedSubscript:&unk_2841837D8];
    v228 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"11-G-Weiskei-H264" videoName:@"11-G-Weiskei-H264-B" transitionImageName:@"11-G-Weiskei-H264" overlayColor:v60 theme:0 variant:25 clip:2 tags:2];

    v329[41] = v228;
    v61 = [v18 objectForKeyedSubscript:&unk_2841837D8];
    v227 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"11-G-Weiskei-H264" videoName:@"11-G-Weiskei-H264-E" transitionImageName:@"11-G-Weiskei-H264" overlayColor:v61 theme:0 variant:25 clip:3 tags:2];

    v329[42] = v227;
    v62 = [v18 objectForKeyedSubscript:&unk_2841837D8];
    v225 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"11-G-Weiskei-H264" videoName:@"11-G-Weiskei-H264-F" transitionImageName:@"11-G-Weiskei-H264" overlayColor:v62 theme:0 variant:25 clip:4 tags:2];

    v329[43] = v225;
    v63 = [v18 objectForKeyedSubscript:&unk_2841837F0];
    v223 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"12-H-Leucippe-H264" videoName:@"12-H-Leucippe-H264-A" transitionImageName:@"motion-black" overlayColor:v63 theme:0 variant:13 clip:1 tags:4];

    v329[44] = v223;
    v64 = [v18 objectForKeyedSubscript:&unk_2841837F0];
    v221 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"12-H-Leucippe-H264" videoName:@"12-H-Leucippe-H264-B" transitionImageName:@"12-H-Leucippe-H264" overlayColor:v64 theme:0 variant:13 clip:2 tags:2];

    v329[45] = v221;
    v65 = [v18 objectForKeyedSubscript:&unk_2841837F0];
    v219 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"12-H-Leucippe-H264" videoName:@"12-H-Leucippe-H264-E" transitionImageName:@"12-H-Leucippe-H264" overlayColor:v65 theme:0 variant:13 clip:3 tags:2];

    v329[46] = v219;
    v66 = [v18 objectForKeyedSubscript:&unk_2841837F0];
    v217 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"12-H-Leucippe-H264" videoName:@"12-H-Leucippe-H264-F" transitionImageName:@"12-H-Leucippe-H264" overlayColor:v66 theme:0 variant:13 clip:4 tags:2];

    v329[47] = v217;
    v67 = [v18 objectForKeyedSubscript:&unk_284183808];
    v215 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"13-P-Sylvia-H264" videoName:@"13-P-Sylvia-H264-A" transitionImageName:@"motion-black" overlayColor:v67 theme:0 variant:23 clip:1 tags:4];

    v329[48] = v215;
    v68 = [v18 objectForKeyedSubscript:&unk_284183808];
    v213 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"13-P-Sylvia-H264" videoName:@"13-P-Sylvia-H264-B" transitionImageName:@"13-P-Sylvia-H264" overlayColor:v68 theme:0 variant:23 clip:2 tags:2];

    v329[49] = v213;
    v69 = [v18 objectForKeyedSubscript:&unk_284183808];
    v211 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"13-P-Sylvia-H264" videoName:@"13-P-Sylvia-H264-E" transitionImageName:@"13-P-Sylvia-H264" overlayColor:v69 theme:0 variant:23 clip:3 tags:2];

    v329[50] = v211;
    v70 = [v18 objectForKeyedSubscript:&unk_284183808];
    v210 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"13-P-Sylvia-H264" videoName:@"13-P-Sylvia-H264-F" transitionImageName:@"13-P-Sylvia-H264" overlayColor:v70 theme:0 variant:23 clip:4 tags:2];

    v329[51] = v210;
    v71 = [v18 objectForKeyedSubscript:&unk_284183820];
    v209 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"14-C-Myrina-H264" videoName:@"14-C-Myrina-H264-A" transitionImageName:@"motion-black" overlayColor:v71 theme:0 variant:17 clip:1 tags:4];

    v329[52] = v209;
    v72 = [v18 objectForKeyedSubscript:&unk_284183820];
    v208 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"14-C-Myrina-H264" videoName:@"14-C-Myrina-H264-B" transitionImageName:@"14-C-Myrina-H264" overlayColor:v72 theme:0 variant:17 clip:2 tags:2];

    v329[53] = v208;
    v73 = [v18 objectForKeyedSubscript:&unk_284183820];
    v207 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"14-C-Myrina-H264" videoName:@"14-C-Myrina-H264-E" transitionImageName:@"14-C-Myrina-H264" overlayColor:v73 theme:0 variant:17 clip:3 tags:2];

    v329[54] = v207;
    v74 = [v18 objectForKeyedSubscript:&unk_284183820];
    v206 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"14-C-Myrina-H264" videoName:@"14-C-Myrina-H264-F" transitionImageName:@"14-C-Myrina-H264" overlayColor:v74 theme:0 variant:17 clip:4 tags:2];

    v329[55] = v206;
    v75 = [v18 objectForKeyedSubscript:&unk_284183838];
    v205 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"15-U-Ripheus-H264" videoName:@"15-U-Ripheus-H264-A" transitionImageName:@"motion-black" overlayColor:v75 theme:0 variant:20 clip:1 tags:4];

    v329[56] = v205;
    v76 = [v18 objectForKeyedSubscript:&unk_284183838];
    v204 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"15-U-Ripheus-H264" videoName:@"15-U-Ripheus-H264-B" transitionImageName:@"15-U-Ripheus-H264" overlayColor:v76 theme:0 variant:20 clip:2 tags:2];

    v329[57] = v204;
    v77 = [v18 objectForKeyedSubscript:&unk_284183838];
    v203 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"15-U-Ripheus-H264" videoName:@"15-U-Ripheus-H264-E" transitionImageName:@"15-U-Ripheus-H264" overlayColor:v77 theme:0 variant:20 clip:3 tags:2];

    v329[58] = v203;
    v78 = [v18 objectForKeyedSubscript:&unk_284183838];
    v202 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"15-U-Ripheus-H264" videoName:@"15-U-Ripheus-H264-F" transitionImageName:@"15-U-Ripheus-H264" overlayColor:v78 theme:0 variant:20 clip:4 tags:2];

    v329[59] = v202;
    v79 = [v18 objectForKeyedSubscript:&unk_284183850];
    v201 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"16-M-Amphitryon-H264" videoName:@"16-M-Amphitryon-H264-A" transitionImageName:@"motion-black" overlayColor:v79 theme:0 variant:1 clip:1 tags:4];

    v329[60] = v201;
    v80 = [v18 objectForKeyedSubscript:&unk_284183850];
    v200 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"16-M-Amphitryon-H264" videoName:@"16-M-Amphitryon-H264-B" transitionImageName:@"16-M-Amphitryon-H264" overlayColor:v80 theme:0 variant:1 clip:2 tags:2];

    v329[61] = v200;
    v81 = [v18 objectForKeyedSubscript:&unk_284183850];
    v199 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"16-M-Amphitryon-H264" videoName:@"16-M-Amphitryon-H264-E" transitionImageName:@"16-M-Amphitryon-H264" overlayColor:v81 theme:0 variant:1 clip:3 tags:2];

    v329[62] = v199;
    v82 = [v18 objectForKeyedSubscript:&unk_284183850];
    v198 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"16-M-Amphitryon-H264" videoName:@"16-M-Amphitryon-H264-F" transitionImageName:@"16-M-Amphitryon-H264" overlayColor:v82 theme:0 variant:1 clip:4 tags:2];

    v329[63] = v198;
    v83 = [v18 objectForKeyedSubscript:&unk_284183868];
    v197 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"17-C-Sangaris-H264" videoName:@"17-C-Sangaris-H264-A" transitionImageName:@"motion-black" overlayColor:v83 theme:0 variant:22 clip:1 tags:4];

    v329[64] = v197;
    v84 = [v18 objectForKeyedSubscript:&unk_284183868];
    v196 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"17-C-Sangaris-H264" videoName:@"17-C-Sangaris-H264-B" transitionImageName:@"17-C-Sangaris-H264" overlayColor:v84 theme:0 variant:22 clip:2 tags:2];

    v329[65] = v196;
    v85 = [v18 objectForKeyedSubscript:&unk_284183868];
    v195 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"17-C-Sangaris-H264" videoName:@"17-C-Sangaris-H264-E" transitionImageName:@"17-C-Sangaris-H264" overlayColor:v85 theme:0 variant:22 clip:3 tags:2];

    v329[66] = v195;
    v86 = [v18 objectForKeyedSubscript:&unk_284183868];
    v194 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"17-C-Sangaris-H264" videoName:@"17-C-Sangaris-H264-F" transitionImageName:@"17-C-Sangaris-H264" overlayColor:v86 theme:0 variant:22 clip:4 tags:2];

    v329[67] = v194;
    v87 = [v18 objectForKeyedSubscript:&unk_284183880];
    v193 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"18-D-Timorensis-H264" videoName:@"18-D-Timorensis-H264-A" transitionImageName:@"motion-black" overlayColor:v87 theme:0 variant:24 clip:1 tags:4];

    v329[68] = v193;
    v88 = [v18 objectForKeyedSubscript:&unk_284183880];
    v192 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"18-D-Timorensis-H264" videoName:@"18-D-Timorensis-H264-B" transitionImageName:@"18-D-Timorensis-H264" overlayColor:v88 theme:0 variant:24 clip:2 tags:2];

    v329[69] = v192;
    v89 = [v18 objectForKeyedSubscript:&unk_284183880];
    v191 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"18-D-Timorensis-H264" videoName:@"18-D-Timorensis-H264-E" transitionImageName:@"18-D-Timorensis-H264" overlayColor:v89 theme:0 variant:24 clip:3 tags:2];

    v329[70] = v191;
    v90 = [v18 objectForKeyedSubscript:&unk_284183880];
    v190 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"18-D-Timorensis-H264" videoName:@"18-D-Timorensis-H264-F" transitionImageName:@"18-D-Timorensis-H264" overlayColor:v90 theme:0 variant:24 clip:4 tags:2];

    v329[71] = v190;
    v91 = [v18 objectForKeyedSubscript:&unk_284183898];
    v189 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"19-P-Rurina-H264" videoName:@"19-P-Rurina-H264-A" transitionImageName:@"motion-black" overlayColor:v91 theme:0 variant:21 clip:1 tags:4];

    v329[72] = v189;
    v92 = [v18 objectForKeyedSubscript:&unk_284183898];
    v188 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"19-P-Rurina-H264" videoName:@"19-P-Rurina-H264-B" transitionImageName:@"19-P-Rurina-H264" overlayColor:v92 theme:0 variant:21 clip:2 tags:2];

    v329[73] = v188;
    v93 = [v18 objectForKeyedSubscript:&unk_284183898];
    v187 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"19-P-Rurina-H264" videoName:@"19-P-Rurina-H264-E" transitionImageName:@"19-P-Rurina-H264" overlayColor:v93 theme:0 variant:21 clip:3 tags:2];

    v329[74] = v187;
    v94 = [v18 objectForKeyedSubscript:&unk_284183898];
    v186 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"19-P-Rurina-H264" videoName:@"19-P-Rurina-H264-F" transitionImageName:@"19-P-Rurina-H264" overlayColor:v94 theme:0 variant:21 clip:4 tags:2];

    v329[75] = v186;
    v95 = [v18 objectForKeyedSubscript:&unk_2841838B0];
    v185 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"20-C-Excelsior-H264" videoName:@"20-C-Excelsior-H264-A" transitionImageName:@"motion-black" overlayColor:v95 theme:0 variant:8 clip:1 tags:4];

    v329[76] = v185;
    v96 = [v18 objectForKeyedSubscript:&unk_2841838B0];
    v184 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"20-C-Excelsior-H264" videoName:@"20-C-Excelsior-H264-B" transitionImageName:@"20-C-Excelsior-H264" overlayColor:v96 theme:0 variant:8 clip:2 tags:2];

    v329[77] = v184;
    v97 = [v18 objectForKeyedSubscript:&unk_2841838B0];
    v183 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"20-C-Excelsior-H264" videoName:@"20-C-Excelsior-H264-E" transitionImageName:@"20-C-Excelsior-H264" overlayColor:v97 theme:0 variant:8 clip:3 tags:2];

    v329[78] = v183;
    v98 = [v18 objectForKeyedSubscript:&unk_2841838B0];
    v182 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"20-C-Excelsior-H264" videoName:@"20-C-Excelsior-H264-F" transitionImageName:@"20-C-Excelsior-H264" overlayColor:v98 theme:0 variant:8 clip:4 tags:2];

    v329[79] = v182;
    v99 = [v18 objectForKeyedSubscript:&unk_2841838C8];
    v181 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"21-I-Hypermnestra-H264" videoName:@"21-I-Hypermnestra-H264-A" transitionImageName:@"motion-black" overlayColor:v99 theme:0 variant:9 clip:1 tags:4];

    v329[80] = v181;
    v100 = [v18 objectForKeyedSubscript:&unk_2841838C8];
    v180 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"21-I-Hypermnestra-H264" videoName:@"21-I-Hypermnestra-H264-B" transitionImageName:@"21-I-Hypermnestra-H264" overlayColor:v100 theme:0 variant:9 clip:2 tags:2];

    v329[81] = v180;
    v101 = [v18 objectForKeyedSubscript:&unk_2841838C8];
    v179 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"21-I-Hypermnestra-H264" videoName:@"21-I-Hypermnestra-H264-E" transitionImageName:@"21-I-Hypermnestra-H264" overlayColor:v101 theme:0 variant:9 clip:3 tags:2];

    v329[82] = v179;
    v102 = [v18 objectForKeyedSubscript:&unk_2841838C8];
    v178 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"21-I-Hypermnestra-H264" videoName:@"21-I-Hypermnestra-H264-F" transitionImageName:@"21-I-Hypermnestra-H264" overlayColor:v102 theme:0 variant:9 clip:4 tags:2];

    v329[83] = v178;
    v103 = [v18 objectForKeyedSubscript:&unk_2841838E0];
    v177 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"22-L-Apallonia-H264" videoName:@"22-L-Apallonia-H264-A" transitionImageName:@"motion-black" overlayColor:v103 theme:0 variant:2 clip:1 tags:4];

    v329[84] = v177;
    v104 = [v18 objectForKeyedSubscript:&unk_2841838E0];
    v176 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"22-L-Apallonia-H264" videoName:@"22-L-Apallonia-H264-B" transitionImageName:@"22-L-Apallonia-H264" overlayColor:v104 theme:0 variant:2 clip:2 tags:2];

    v329[85] = v176;
    v105 = [v18 objectForKeyedSubscript:&unk_2841838E0];
    v175 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"22-L-Apallonia-H264" videoName:@"22-L-Apallonia-H264-E" transitionImageName:@"22-L-Apallonia-H264" overlayColor:v105 theme:0 variant:2 clip:3 tags:2];

    v329[86] = v175;
    v106 = [v18 objectForKeyedSubscript:&unk_2841838E0];
    v174 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"22-L-Apallonia-H264" videoName:@"22-L-Apallonia-H264-F" transitionImageName:@"22-L-Apallonia-H264" overlayColor:v106 theme:0 variant:2 clip:4 tags:2];

    v329[87] = v174;
    v107 = [v18 objectForKeyedSubscript:&unk_2841838F8];
    v173 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"23-P-Dido-H264" videoName:@"23-P-Dido-H264-A" transitionImageName:@"motion-black" overlayColor:v107 theme:0 variant:6 clip:1 tags:4];

    v329[88] = v173;
    v108 = [v18 objectForKeyedSubscript:&unk_2841838F8];
    v172 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"23-P-Dido-H264" videoName:@"23-P-Dido-H264-B" transitionImageName:@"23-P-Dido-H264" overlayColor:v108 theme:0 variant:6 clip:2 tags:2];

    v329[89] = v172;
    v109 = [v18 objectForKeyedSubscript:&unk_2841838F8];
    v171 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"23-P-Dido-H264" videoName:@"23-P-Dido-H264-E" transitionImageName:@"23-P-Dido-H264" overlayColor:v109 theme:0 variant:6 clip:3 tags:2];

    v329[90] = v171;
    v110 = [v18 objectForKeyedSubscript:&unk_2841838F8];
    v170 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"23-P-Dido-H264" videoName:@"23-P-Dido-H264-F" transitionImageName:@"23-P-Dido-H264" overlayColor:v110 theme:0 variant:6 clip:4 tags:2];

    v329[91] = v170;
    v111 = [v18 objectForKeyedSubscript:&unk_284183910];
    v169 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"24-Z-Doubledayi-H264" videoName:@"24-Z-Doubledayi-H264-A" transitionImageName:@"motion-black" overlayColor:v111 theme:0 variant:7 clip:1 tags:4];

    v329[92] = v169;
    v112 = [v18 objectForKeyedSubscript:&unk_284183910];
    v168 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"24-Z-Doubledayi-H264" videoName:@"24-Z-Doubledayi-H264-B" transitionImageName:@"24-Z-Doubledayi-H264" overlayColor:v112 theme:0 variant:7 clip:2 tags:2];

    v329[93] = v168;
    v113 = [v18 objectForKeyedSubscript:&unk_284183910];
    v167 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"24-Z-Doubledayi-H264" videoName:@"24-Z-Doubledayi-H264-E" transitionImageName:@"24-Z-Doubledayi-H264" overlayColor:v113 theme:0 variant:7 clip:3 tags:2];

    v329[94] = v167;
    v114 = [v18 objectForKeyedSubscript:&unk_284183910];
    v166 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"24-Z-Doubledayi-H264" videoName:@"24-Z-Doubledayi-H264-F" transitionImageName:@"24-Z-Doubledayi-H264" overlayColor:v114 theme:0 variant:7 clip:4 tags:2];

    v329[95] = v166;
    v115 = [v18 objectForKeyedSubscript:&unk_284183928];
    v116 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"25-P-Lorquinianus-H264" videoName:@"25-P-Lorquinianus-H264-A" transitionImageName:@"motion-black" overlayColor:v115 theme:0 variant:11 clip:1 tags:4];

    v329[96] = v116;
    v117 = [v18 objectForKeyedSubscript:&unk_284183928];
    v118 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"25-P-Lorquinianus-H264" videoName:@"25-P-Lorquinianus-H264-B" transitionImageName:@"25-P-Lorquinianus-H264" overlayColor:v117 theme:0 variant:11 clip:2 tags:2];

    v329[97] = v118;
    v119 = [v18 objectForKeyedSubscript:&unk_284183928];
    v120 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"25-P-Lorquinianus-H264" videoName:@"25-P-Lorquinianus-H264-E" transitionImageName:@"25-P-Lorquinianus-H264" overlayColor:v119 theme:0 variant:11 clip:3 tags:2];

    v329[98] = v120;
    v121 = [v18 objectForKeyedSubscript:&unk_284183928];
    v122 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"25-P-Lorquinianus-H264" videoName:@"25-P-Lorquinianus-H264-F" transitionImageName:@"25-P-Lorquinianus-H264" overlayColor:v121 theme:0 variant:11 clip:4 tags:2];

    v329[99] = v122;
    v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v329 count:100];
    butterflyListings = v7->_butterflyListings;
    v7->_butterflyListings = v123;

    v125 = [v18 objectForKeyedSubscript:&unk_284183940];
    v324 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"01-Cyndaria" videoName:@"01-Cyndaria" transitionImageName:@"motion-black" overlayColor:v125 theme:1 variant:26 clip:1 tags:2];

    v328[0] = v324;
    v126 = [v18 objectForKeyedSubscript:&unk_284183958];
    v320 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"02-Cyndaria" videoName:@"02-Cyndaria" transitionImageName:@"motion-black" overlayColor:v126 theme:1 variant:27 clip:1 tags:2];

    v328[1] = v320;
    v127 = [v18 objectForKeyedSubscript:&unk_284183970];
    v316 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"03-Cyndaria" videoName:@"03-Cyndaria" transitionImageName:@"motion-black" overlayColor:v127 theme:1 variant:28 clip:1 tags:2];

    v328[2] = v316;
    v128 = [v18 objectForKeyedSubscript:&unk_284183988];
    v312 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"04-Cyndaria" videoName:@"04-Cyndaria" transitionImageName:@"motion-black" overlayColor:v128 theme:1 variant:29 clip:1 tags:2];

    v328[3] = v312;
    v129 = [v18 objectForKeyedSubscript:&unk_2841839A0];
    v309 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"05-Lions-Mane" videoName:@"05-Lions-Mane" transitionImageName:@"motion-black" overlayColor:v129 theme:1 variant:30 clip:1 tags:2];

    v328[4] = v309;
    v130 = [v18 objectForKeyedSubscript:&unk_2841839B8];
    v306 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-Lions-Mane-alt" videoName:@"06-Lions-Mane-alt" transitionImageName:@"motion-black" overlayColor:v130 theme:1 variant:31 clip:1 tags:2];

    v328[5] = v306;
    v131 = [v18 objectForKeyedSubscript:&unk_2841839D0];
    v303 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"06-Lions-Mane" videoName:@"06-Lions-Mane" transitionImageName:@"motion-black" overlayColor:v131 theme:1 variant:32 clip:1 tags:2];

    v328[6] = v303;
    v132 = [v18 objectForKeyedSubscript:&unk_2841839E8];
    v300 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"07-Lions-Mane" videoName:@"07-Lions-Mane" transitionImageName:@"motion-black" overlayColor:v132 theme:1 variant:33 clip:1 tags:2];

    v328[7] = v300;
    v133 = [v18 objectForKeyedSubscript:&unk_284183A00];
    v297 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"08-Nettle" videoName:@"08-Nettle" transitionImageName:@"motion-black" overlayColor:v133 theme:1 variant:34 clip:1 tags:2];

    v328[8] = v297;
    v134 = [v18 objectForKeyedSubscript:&unk_284183A18];
    v294 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"09-Nettle" videoName:@"09-Nettle" transitionImageName:@"motion-black" overlayColor:v134 theme:1 variant:35 clip:1 tags:2];

    v328[9] = v294;
    v135 = [v18 objectForKeyedSubscript:&unk_284183A30];
    v291 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"10-Moon" videoName:@"10-Moon" transitionImageName:@"motion-black" overlayColor:v135 theme:1 variant:36 clip:1 tags:2];

    v328[10] = v291;
    v136 = [v18 objectForKeyedSubscript:&unk_284183A48];
    v288 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"11-Moon" videoName:@"11-Moon" transitionImageName:@"motion-black" overlayColor:v136 theme:1 variant:37 clip:1 tags:2];

    v328[11] = v288;
    v137 = [v18 objectForKeyedSubscript:&unk_284183A60];
    v285 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"12-Moon" videoName:@"12-Moon" transitionImageName:@"motion-black" overlayColor:v137 theme:1 variant:38 clip:1 tags:2];

    v328[12] = v285;
    v138 = [v18 objectForKeyedSubscript:&unk_284183A78];
    v282 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"14-Root-Mouth" videoName:@"14-Root-Mouth" transitionImageName:@"motion-black" overlayColor:v138 theme:1 variant:39 clip:1 tags:2];

    v328[13] = v282;
    v139 = [v18 objectForKeyedSubscript:&unk_284183A90];
    v279 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"16-Root-Mouth" videoName:@"16-Root-Mouth" transitionImageName:@"motion-black" overlayColor:v139 theme:1 variant:40 clip:1 tags:2];

    v328[14] = v279;
    v140 = [v18 objectForKeyedSubscript:&unk_284183AA8];
    v141 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"17-Blueblubber" videoName:@"17-Blueblubber" transitionImageName:@"motion-black" overlayColor:v140 theme:1 variant:41 clip:1 tags:2];

    v328[15] = v141;
    v142 = [v18 objectForKeyedSubscript:&unk_284183AC0];
    v143 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"18-Blueblubber" videoName:@"18-Blueblubber" transitionImageName:@"motion-black" overlayColor:v142 theme:1 variant:42 clip:1 tags:2];

    v328[16] = v143;
    v144 = [v18 objectForKeyedSubscript:&unk_284183AD8];
    v145 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"19-Moon" videoName:@"19-Moon" transitionImageName:@"motion-black" overlayColor:v144 theme:1 variant:43 clip:1 tags:3];

    v328[17] = v145;
    v146 = [v18 objectForKeyedSubscript:&unk_284183AF0];
    v147 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"21-Moon" videoName:@"21-Moon" transitionImageName:@"motion-black" overlayColor:v146 theme:1 variant:44 clip:1 tags:2];

    v328[18] = v147;
    v148 = [MEMORY[0x277CBEA60] arrayWithObjects:v328 count:19];
    jellyfishListings = v7->_jellyfishListings;
    v7->_jellyfishListings = v148;

    v150 = [v18 objectForKeyedSubscript:&unk_284183B08];
    v325 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"CHRYSANTHEMUM" videoName:@"CHRYSANTHEMUM" transitionImageName:@"motion-black" overlayColor:v150 theme:2 variant:45 clip:1 tags:2];

    v327[0] = v325;
    v151 = [v18 objectForKeyedSubscript:&unk_284183B20];
    v321 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"GARDENIA" videoName:@"GARDENIA" transitionImageName:@"motion-black" overlayColor:v151 theme:2 variant:46 clip:1 tags:2];

    v327[1] = v321;
    v152 = [v18 objectForKeyedSubscript:&unk_284183B38];
    v317 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"PINK-DAHLIA" videoName:@"PINK-DAHLIA" transitionImageName:@"motion-black" overlayColor:v152 theme:2 variant:47 clip:1 tags:2];

    v327[2] = v317;
    v153 = [v18 objectForKeyedSubscript:&unk_284183B50];
    v313 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"PINK-PEONY" videoName:@"PINK-PEONY" transitionImageName:@"motion-black" overlayColor:v153 theme:2 variant:48 clip:1 tags:2];

    v327[3] = v313;
    v154 = [v18 objectForKeyedSubscript:&unk_284183B68];
    v155 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"PURPLE-PASSION" videoName:@"PURPLE-PASSION" transitionImageName:@"motion-black" overlayColor:v154 theme:2 variant:49 clip:1 tags:2];

    v327[4] = v155;
    v156 = [v18 objectForKeyedSubscript:&unk_284183B80];
    v157 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"WHITE-NIGELLA" videoName:@"WHITE-NIGELLA" transitionImageName:@"motion-black" overlayColor:v156 theme:2 variant:50 clip:1 tags:2];

    v327[5] = v157;
    v158 = [v18 objectForKeyedSubscript:&unk_284183B98];
    v159 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"WILDFLOWER" videoName:@"WILDFLOWER" transitionImageName:@"motion-black" overlayColor:v158 theme:2 variant:51 clip:1 tags:2];

    v327[6] = v159;
    v160 = [v18 objectForKeyedSubscript:&unk_284183BB0];
    v161 = [[NTKVideoListing alloc] initForDevice:v7->_device withName:@"YELLOW-POPPY" videoName:@"YELLOW-POPPY" transitionImageName:@"motion-black" overlayColor:v160 theme:2 variant:52 clip:1 tags:3];

    v327[7] = v161;
    v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v327 count:8];
    flowerListings = v7->_flowerListings;
    v7->_flowerListings = v162;

    v164 = v7;
    v5 = v322;
  }

  return v7;
}

- (id)_listingsWithTheme:(unint64_t)a3
{
  if (a3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = (&self->_butterflyListings)[a3];
  }

  return v4;
}

- (id)_listingsWithTheme:(unint64_t)a3 variant:(int64_t)a4
{
  v5 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__NTKVideoListingFactory__listingsWithTheme_variant___block_invoke;
  v9[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
  v9[4] = a4;
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)_listingsWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4
{
  v5 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__NTKVideoListingFactory__listingsWithTheme_notMatchingVariant___block_invoke;
  v9[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
  v9[4] = a4;
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)_listingWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  [(NTKVideoListingFactory *)self _listingsWithTheme:a3 variant:a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 hasTag:{a5, v14}])
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_listingsWithTheme:(unint64_t)a3 variant:(int64_t)a4 tag:(unint64_t)a5 notMatchingClip:(int64_t)a6
{
  v9 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__NTKVideoListingFactory__listingsWithTheme_variant_tag_notMatchingClip___block_invoke;
  v13[3] = &__block_descriptor_56_e25_B24__0_8__NSDictionary_16l;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v10 = [MEMORY[0x277CCAC30] predicateWithBlock:v13];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  return v11;
}

BOOL __73__NTKVideoListingFactory__listingsWithTheme_variant_tag_notMatchingClip___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  v9 = (a1[4] == -1 || [v7 variant] == a1[4]) && objc_msgSend(v8, "hasTag:", a1[5]) && objc_msgSend(v8, "clip") != a1[6];

  return v9;
}

- (id)_listingsWithTheme:(unint64_t)a3 notMatchingVariant:(int64_t)a4 matchingTag:(unint64_t)a5
{
  v7 = [(NTKVideoListingFactory *)self _listingsWithTheme:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__NTKVideoListingFactory__listingsWithTheme_notMatchingVariant_matchingTag___block_invoke;
  v11[3] = &__block_descriptor_48_e25_B24__0_8__NSDictionary_16l;
  v11[4] = a4;
  v11[5] = a5;
  v8 = [MEMORY[0x277CCAC30] predicateWithBlock:v11];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  return v9;
}

uint64_t __76__NTKVideoListingFactory__listingsWithTheme_notMatchingVariant_matchingTag___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 variant] == *(a1 + 32))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 hasTag:*(a1 + 40)];
  }

  return v4;
}

- (void)discardAssets
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_assetListings;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) discardAssets];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_assetListings removeAllObjects];
}

@end