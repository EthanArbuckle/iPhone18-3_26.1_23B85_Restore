void FigStartCaptureServers()
{
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      FigStartCaptureServers_cold_3();
    }
  }

  else
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CMCapture");
    if (BundleWithIdentifier)
    {
      v1 = BundleWithIdentifier;
      v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"FigCaptureMemoryReporterStart", @"FigExternalStorageDeviceManagerServerStart", @"FigCapturePreloadShaders", @"FigCaptureSourceServerStart", @"FigCameraViewfinderServerStart", @"FigCaptureSessionServerStart", @"FigFlashlightServerStart", @"FigCaptureDeferredContainerManagerServerStart", 0}];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v3 = [v2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v14;
        v6 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v14 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v8 = *(*(&v13 + 1) + 8 * i);
            FunctionPointerForName = CFBundleGetFunctionPointerForName(v1, v8);
            if (FunctionPointerForName)
            {
              FunctionPointerForName();
            }

            else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
            {
              FigStartCaptureServers_cold_1(buf, v8, &v11);
            }
          }

          v4 = [v2 countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      FigStartCaptureServers_cold_2();
    }
  }
}

CFArrayRef FigCaptureCopySerializableKeys()
{
  v21[0] = @"MetadataDictionary";
  v21[1] = @"AEAverage";
  v21[2] = @"AGC";
  v21[3] = @"ExposureTime";
  v21[4] = @"SNR";
  v21[5] = @"SensorID";
  v21[6] = @"TemporalMotion";
  v21[7] = @"ispDGain";
  v21[8] = @"sensorDGain";
  v21[9] = @"Translation";
  v21[10] = @"TransformMatrix";
  v21[11] = @"MotionDataError";
  v21[12] = @"Acceleration";
  v21[13] = @"Attitude";
  v21[14] = @"{Diagnostic}";
  v21[15] = @"DeviceConfiguration";
  v21[16] = @"Defaults";
  v21[17] = @"com.apple.avfoundation";
  v21[18] = @"com.apple.coremedia";
  v21[19] = @"BuildVersion";
  v21[20] = @"DeviceModelName";
  v21[21] = @"DeviceSerialNumber";
  v21[22] = @"Version-AVFCapture";
  v21[23] = @"Version-CMCapture";
  v21[24] = @"Version-CMCaptureCore";
  v21[25] = @"Build";
  v21[26] = @"{PrivateClientMetadata}";
  v21[27] = @"CaptureFolderClientPath";
  v0 = *MEMORY[0x277CD3410];
  v21[28] = @"FilteredDetectedObjectInfo";
  v21[29] = v0;
  v1 = *MEMORY[0x277CD31A0];
  v21[30] = *MEMORY[0x277CD3038];
  v21[31] = v1;
  v2 = *MEMORY[0x277CD3118];
  v21[32] = *MEMORY[0x277CD3110];
  v21[33] = v2;
  v3 = *MEMORY[0x277CD3158];
  v21[34] = *MEMORY[0x277CD3060];
  v21[35] = v3;
  v4 = *MEMORY[0x277CD2F48];
  v21[36] = *MEMORY[0x277CD3068];
  v21[37] = v4;
  v5 = *MEMORY[0x277CD3178];
  v21[38] = *MEMORY[0x277CD30B0];
  v21[39] = v5;
  v6 = *MEMORY[0x277CD3088];
  v21[40] = *MEMORY[0x277CD3150];
  v21[41] = v6;
  v7 = *MEMORY[0x277CD3020];
  v8 = *MEMORY[0x277CD31A8];
  v9 = *MEMORY[0x277CD30B8];
  v21[44] = *MEMORY[0x277CD3080];
  v21[45] = v9;
  v10 = *MEMORY[0x277CD3058];
  v21[46] = *MEMORY[0x277CD30F0];
  v21[47] = v10;
  v11 = *MEMORY[0x277CD3140];
  v21[48] = *MEMORY[0x277CD3070];
  v21[49] = v11;
  v12 = *MEMORY[0x277CD3050];
  v21[50] = *MEMORY[0x277CD3138];
  v21[51] = v12;
  v21[42] = v7;
  v21[43] = v8;
  v13 = *MEMORY[0x277CD3040];
  v21[52] = v8;
  v21[53] = v13;
  v14 = *MEMORY[0x277CD30C0];
  v21[54] = *MEMORY[0x277CD30D8];
  v21[55] = v14;
  v15 = *MEMORY[0x277CD3048];
  v21[56] = *MEMORY[0x277CD30C8];
  v21[57] = v15;
  v16 = *MEMORY[0x277CD2F90];
  v21[58] = *MEMORY[0x277CD2F98];
  v21[59] = v16;
  v17 = *MEMORY[0x277CD2FD8];
  v21[60] = *MEMORY[0x277CD2FD0];
  v21[61] = v17;
  v18 = *MEMORY[0x277CD2FB0];
  v21[62] = *MEMORY[0x277CD2FC8];
  v21[63] = v18;
  v21[64] = *MEMORY[0x277CD2FC0];
  v21[65] = *MEMORY[0x277CD2FA8];
  v21[66] = *MEMORY[0x277CD2FA0];
  v21[67] = *MEMORY[0x277CD2FB8];
  v21[68] = *MEMORY[0x277CD2F50];
  v21[69] = *MEMORY[0x277CD3030];
  v21[70] = *MEMORY[0x277CD3028];
  v21[71] = *MEMORY[0x277CD3190];
  v21[72] = *MEMORY[0x277CD3188];
  v21[73] = *MEMORY[0x277CD30F8];
  v21[74] = *MEMORY[0x277CD3108];
  v21[75] = *MEMORY[0x277CD3100];
  v21[76] = *MEMORY[0x277CD3010];
  v21[77] = *MEMORY[0x277CD3168];
  v21[78] = *MEMORY[0x277CD3160];
  v21[79] = *MEMORY[0x277CD3000];
  v21[80] = *MEMORY[0x277CD2D38];
  v21[81] = @"Regions";
  v21[82] = @"RollingShutterSkew";
  v21[83] = @"AWBGGain";
  v21[84] = @"RawMetaData";
  v21[85] = @"AFStatus";
  v21[86] = @"Histogram_RChannel";
  v21[87] = @"Histogram_GChannel";
  v21[88] = @"Histogram_BChannel";
  v21[89] = @"Histogram_YChannel";
  v21[90] = @"CurrentFocusPosition";
  v21[91] = @"AEMatrix";
  v21[92] = @"BrightnessValue";
  v21[93] = @"AFStable";
  v21[94] = @"AEStable";
  v21[95] = @"AELimitsReached";
  v21[96] = @"AWBRGain";
  v21[97] = @"FocusPeakSumArray";
  v21[98] = @"ExposureBias";
  v21[99] = @"Fnumber";
  v21[100] = @"NormalizedSNR";
  v21[101] = @"FocusWindow";
  v21[102] = @"FocusScoresArray";
  v21[103] = @"GlobalShutterFlag";
  v21[104] = @"AWBStable";
  v21[105] = @"ISOSpeedRating";
  v21[106] = @"AWBBGain";
  v21[107] = @"FlashMode";
  v21[108] = @"PortType";
  v21[109] = @"BracketedCaptureSequenceNumber";
  v21[110] = @"LuxLevel";
  v21[111] = @"AverageFocusScore";
  v21[112] = @"CurrentFrameRate";
  v21[113] = @"CameraDriverName";
  v21[114] = @"PreBracketingFrame";
  v21[115] = @"FlashCaptureSequence";
  v21[116] = @"ReadNoise_1x";
  v21[117] = @"ReadNoise_8x";
  v21[118] = @"RawSensorWidth";
  v21[119] = @"RawSensorHeight";
  v21[120] = @"SensorTemperature";
  v21[121] = @"RawCropRect";
  v21[122] = @"ConversionGain";
  v21[123] = @"AETarget";
  v21[124] = @"ISOBase";
  v21[125] = @"DetectedFacesArray";
  v21[126] = @"FaceID";
  v21[127] = @"Timestamp";
  v21[128] = @"AngleInfoRoll";
  v21[129] = @"AngleInfoYaw";
  v21[130] = @"AngleInfoPitch";
  v21[131] = @"ConfidenceLevel";
  v21[132] = @"Rect";
  v21[133] = @"LeftEyeRect";
  v21[134] = @"RightEyeRect";
  v21[135] = @"DetectedObjectsInfo";
  v21[136] = @"HumanFaces";
  v21[137] = @"HumanHands";
  v21[138] = @"HumanBodies";
  v21[139] = @"HumanFullBodies";
  v21[140] = @"HumanHeads";
  v21[141] = @"CatBodies";
  v21[142] = @"CatHeads";
  v21[143] = @"DogBodies";
  v21[144] = @"DogHeads";
  v21[145] = @"SalientObjects";
  v21[146] = @"SportsBalls";
  v21[147] = @"OriginalTimestamp";
  v21[148] = @"ObjectsArray";
  v21[149] = @"ID";
  v21[150] = @"GroupID";
  v21[151] = @"Modality";
  v21[152] = @"HeatMap";
  v21[153] = @"Map";
  v21[154] = @"Width";
  v21[155] = @"Height";
  v21[156] = @"BytesPerRow";
  v21[157] = @"FaceMetadataObjectsArray";
  v21[158] = @"FaceMetadataObjectsCount";
  v21[159] = @"IsFixedPlaneFocus";
  v21[160] = @"IsHardFocus";
  v21[161] = @"HistogramData";
  v21[162] = @"LumaHistogramData";
  v21[163] = @"BarcodeMetadataObjectsArray";
  v21[164] = @"BarcodeMetadataObjectsCount";
  v21[165] = @"SceneStable";
  v21[166] = @"SceneStabilityMetric";
  v21[167] = @"TrackedFaces";
  v21[168] = @"meta";
  v21[169] = @"version";
  v21[170] = @"tracked_faces";
  v21[171] = @"face_id";
  v21[172] = @"animation";
  v21[173] = @"blendshapes";
  v21[174] = @"left_eye_pitch";
  v21[175] = @"left_eye_yaw";
  v21[176] = @"right_eye_pitch";
  v21[177] = @"right_eye_yaw";
  v21[178] = @"pose";
  v21[179] = @"geometry";
  v21[180] = @"vertices";
  v21[181] = @"left_eye";
  v21[182] = @"right_eye";
  v21[183] = @"look_at_point";
  v21[184] = @"landmarks";
  v21[185] = @"debug";
  v21[186] = @"identity_coefficients";
  v21[187] = @"blendshape_names";
  v21[188] = @"landmark_names";
  v21[189] = @"mesh";
  v21[190] = @"mesh_vertices";
  v21[191] = @"mesh_normals";
  v21[192] = @"mesh_tri_indices";
  v21[193] = @"mesh_quad_indices";
  v21[194] = @"rotation";
  v21[195] = @"translation";
  v21[196] = @"rgb_camera";
  v21[197] = @"intrinsics";
  v21[198] = @"extrinsics";
  v21[199] = @"raw_data";
  v21[200] = @"smooth_data";
  v21[201] = @"timestamp";
  v21[202] = @"RgbMetaData";
  v21[203] = @"TotalGain";
  v21[204] = @"confidence";
  v21[205] = @"data_failure";
  v21[206] = @"image_too_dark";
  v21[207] = @"sensor_covered";
  v21[208] = @"Timestamp";
  v21[209] = @"BarcodeDecodeData";
  v21[210] = @"BarcodeRawData";
  v21[211] = @"BarcodeType";
  v21[212] = @"CodeLocation";
  v21[213] = @"LocatorPoints";
  v21[214] = @"DecodeConfidence";
  v21[215] = @"CodeProperties";
  v21[216] = @"BarcodeRect";
  v21[217] = @"BarcodeCorners";
  v21[218] = @"SymbolVersion";
  v21[219] = @"QRMASK";
  v21[220] = @"ErrorCorrectionLevel";
  v21[221] = @"AztecDataIsCompact";
  v21[222] = @"AztecDataLayers";
  v21[223] = @"AztecDataCodewords";
  v21[224] = @"DataMatrixECC";
  v21[225] = @"ModulesWide";
  v21[226] = @"ModulesHigh";
  v21[227] = @"PDF417IsCompact";
  v21[228] = @"DataCodewordsWide";
  v21[229] = @"DataCodewordsHigh";
  v21[230] = @"ClientSpecifiedMetadata";
  v21[231] = @"ClientSpecifiedDebugMetadata";
  v21[232] = @"OfflineVideoStabilizationMetadata";
  v21[233] = @"StreamReadyForPanoramaCapture";
  v21[234] = @"AELocked";
  v21[235] = @"AFLocked";
  v21[236] = @"AWBLocked";
  v21[237] = @"DynamicToneCurveLocked";
  v21[238] = @"FramePTS";
  v21[239] = @"MotionData";
  v21[240] = @"ScalingFactor";
  v21[241] = @"FusedMotion";
  v21[242] = @"AELimitCurrentToBaseExposureRatio";
  v21[243] = @"LTMLocked";
  v21[244] = @"AWBComputedRGain";
  v21[245] = @"AWBComputedGGain";
  v21[246] = @"AWBComputedBGain";
  v21[247] = @"CriticalFocusErrorOccurred";
  v21[248] = @"LowLightBinnedModeActive";
  v21[249] = @"OriginalPresentationTimeStamp";
  v21[250] = *MEMORY[0x277CD33B0];
  v21[251] = @"1";
  v21[252] = @"2";
  v21[253] = @"3";
  v21[254] = @"4";
  v21[255] = @"5";
  v21[256] = @"6";
  v21[257] = @"7";
  v21[258] = @"8";
  v21[259] = @"9";
  v21[260] = @"10";
  v21[261] = @"40";
  v21[262] = @"11";
  v21[263] = @"12";
  v21[264] = @"13";
  v21[265] = @"14";
  v21[266] = @"15";
  v21[267] = @"16";
  v21[268] = @"17";
  v21[269] = @"19";
  v21[270] = @"20";
  v21[271] = @"21";
  v21[272] = @"22";
  v21[273] = @"23";
  v21[274] = @"24";
  v21[275] = @"25";
  v21[276] = @"26";
  v21[277] = @"27";
  v21[278] = @"28";
  v21[279] = @"29";
  v21[280] = @"30";
  v21[281] = @"31";
  v21[282] = @"32";
  v21[283] = @"33";
  v21[284] = @"34";
  v21[285] = @"35";
  v21[286] = @"36";
  v21[287] = @"37";
  v21[288] = @"38";
  v21[289] = @"39";
  v21[290] = @"41";
  v21[291] = @"42";
  v21[292] = @"43";
  v21[293] = @"44";
  v21[294] = @"45";
  v21[295] = @"46";
  v21[296] = @"47";
  v21[297] = @"48";
  v21[298] = @"49";
  v21[299] = @"50";
  v21[300] = @"51";
  v21[301] = @"52";
  v21[302] = @"53";
  v21[303] = @"54";
  v21[304] = @"55";
  v21[305] = @"56";
  v21[306] = @"57";
  v21[307] = @"58";
  v21[308] = @"59";
  v21[309] = @"60";
  v21[310] = @"61";
  v21[311] = @"62";
  v21[312] = @"63";
  v21[313] = @"64";
  v21[314] = @"65";
  v21[315] = @"66";
  v21[316] = @"67";
  v21[317] = @"68";
  v21[318] = @"69";
  v21[319] = @"70";
  v21[320] = @"71";
  v21[321] = @"72";
  v21[322] = @"73";
  v21[323] = @"74";
  v21[324] = @"75";
  v21[325] = @"77";
  v21[326] = @"78";
  v21[327] = @"79";
  v21[328] = @"80";
  v21[329] = @"81";
  v21[330] = @"82";
  v21[331] = @"83";
  v21[332] = @"84";
  v21[333] = @"85";
  v21[334] = @"87";
  v21[335] = @"90";
  v21[336] = *MEMORY[0x277CD3490];
  v21[337] = *MEMORY[0x277CD34A8];
  v21[338] = *MEMORY[0x277CD34B0];
  v21[339] = *MEMORY[0x277CD34D0];
  v21[340] = *MEMORY[0x277CD3498];
  v21[341] = *MEMORY[0x277CD3488];
  v21[342] = *MEMORY[0x277CD34E0];
  v21[343] = *MEMORY[0x277CD34F0];
  v21[344] = *MEMORY[0x277CD34C8];
  v21[345] = *MEMORY[0x277CD2F30];
  v21[346] = *MEMORY[0x277CD2F28];
  v21[347] = *MEMORY[0x277CD2ED0];
  v21[348] = *MEMORY[0x277CD2E70];
  v21[349] = *MEMORY[0x277CD2F08];
  v21[350] = *MEMORY[0x277CD2EE8];
  v21[351] = *MEMORY[0x277CD2EE0];
  v21[352] = *MEMORY[0x277CD2E90];
  v21[353] = *MEMORY[0x277CD2F20];
  v21[354] = *MEMORY[0x277CD2E98];
  v21[355] = *MEMORY[0x277CD2EA0];
  v21[356] = *MEMORY[0x277CD2EC0];
  v21[357] = *MEMORY[0x277CD2EC8];
  v21[358] = *MEMORY[0x277CD2EA8];
  v21[359] = *MEMORY[0x277CD2EB0];
  v21[360] = *MEMORY[0x277CD2E60];
  v21[361] = *MEMORY[0x277CD2E68];
  v21[362] = *MEMORY[0x277CD2E78];
  v21[363] = *MEMORY[0x277CD2E80];
  v21[364] = *MEMORY[0x277CD2E88];
  v21[365] = *MEMORY[0x277CD2EF8];
  v21[366] = *MEMORY[0x277CD2EB8];
  v21[367] = *MEMORY[0x277CD2F00];
  v21[368] = *MEMORY[0x277CD2EF0];
  v21[369] = *MEMORY[0x277CD2F18];
  v21[370] = *MEMORY[0x277CD2F10];
  v21[371] = *MEMORY[0x277CD2ED8];
  v21[372] = @"FlatDictionaryContent";
  v21[373] = @"FlatDictionaryKeySpec";
  v21[374] = @"HasCorrespondingVisionData";
  v21[375] = @"SynchronizedStreamsCaptureID";
  v21[376] = @"DepthMetadata";
  v21[377] = @"Quality";
  v21[378] = @"Filtered";
  v21[379] = @"Accuracy";
  v21[380] = @"IntrinsicMatrix";
  v21[381] = @"IntrinsicMatrixReferenceDimensions";
  v21[382] = @"ExtrinsicMatrix";
  v21[383] = @"PixelSize";
  v21[384] = @"LensDistortionCoefficients";
  v21[385] = @"InverseLensDistortionCoefficients";
  v21[386] = @"LensDistortionCenter";
  v21[387] = @"DepthDataVersion";
  v21[388] = @"PortraitScoreIsHigh";
  v21[389] = @"PortraitScore";
  v21[390] = @"SimulatedAperture";
  v21[391] = @"RenderingParameters";
  v21[392] = @"EffectStrength";
  v21[393] = @"HasCorrespondingDepthData";
  v21[394] = @"TextRegions";
  v21[395] = @"TextRegionsCount";
  v21[396] = @"BoundingRect";
  v21[397] = @"Timestamp";
  v21[398] = @"RegionID";
  v21[399] = @"AngularOffset";
  v21[400] = @"AngularOffsetBoundingRect";
  v21[401] = @"Confidence";
  v21[402] = @"com.apple.cmio.format_extension.video.only_has_i_frames";
  v21[403] = @"com.apple.cmio.format_extension.muxed.video_constituent_format";
  v21[404] = @"com.apple.cmio.format_extension.muxed.audio_constituent_format";
  v21[405] = @"mjht";
  v21[406] = @"TransportLayer";
  v21[407] = @"ispDGainRangeExpansionFactor";
  v21[408] = @"ScalingFactor";
  v21[409] = @"TemporalNoiseReductionBand0Strength";
  v21[410] = @"TemporalNoiseReductionBand0StrengthModulationEnabled";
  v21[411] = @"NormalizedSNRQsum";
  v21[412] = @"88";
  v21[413] = @"89";
  v21[414] = @"SceneClassificationConfidences";
  v21[415] = @"92";
  v21[416] = @"CorrespondingMetadataIdentifiers";
  v21[417] = @"94";
  v21[418] = @"95";
  v19 = *MEMORY[0x277CBECE8];
  v21[419] = @"96";
  v21[420] = @"97";
  v21[421] = @"98";
  return CFArrayCreate(v19, v21, 422, MEMORY[0x277CBF128]);
}

uint64_t FigCaptureStreamFocusingMethodIsContrastBased(int a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return byte_24254202C[a1 - 1];
  }
}

uint64_t FigCaptureStreamFocusingMethodIsPhaseDetectionBased(int a1)
{
  if ((a1 - 4) > 8)
  {
    return 0;
  }

  else
  {
    return byte_242542036[a1 - 4];
  }
}

void FigStartCaptureServers_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_242532000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not find %@", buf, 0xCu);
}

uint64_t FigCaptureComputeImageGainFromMetadata(const __CFDictionary *a1, float *a2)
{
  v12 = 1.0664;
  v10 = 256;
  valuePtr = 256;
  v9 = 256;
  if (!a1)
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"AGC");
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v5 = CFDictionaryGetValue(a1, @"sensorDGain");
  if (!v5)
  {
    return 4294954516;
  }

  CFNumberGetValue(v5, kCFNumberIntType, &v10);
  v6 = CFDictionaryGetValue(a1, @"ispDGain");
  if (!v6)
  {
    return 4294954516;
  }

  CFNumberGetValue(v6, kCFNumberIntType, &v9);
  v7 = CFDictionaryGetValue(a1, @"ispDGainRangeExpansionFactor");
  if (!v7)
  {
    return 4294954516;
  }

  CFNumberGetValue(v7, kCFNumberFloat32Type, &v12);
  if (v12 <= 0.0)
  {
    return 4294954516;
  }

  result = 0;
  *a2 = ((valuePtr * v10) * v9) / (v12 * 16777000.0);
  return result;
}