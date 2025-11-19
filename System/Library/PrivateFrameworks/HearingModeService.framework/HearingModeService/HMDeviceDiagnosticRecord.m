@interface HMDeviceDiagnosticRecord
+ (int)getHMDiagnosticMeasurementStatusForValue:(unsigned __int8)a3;
+ (int)getHMDiagnosticStatusForValue:(unsigned __int8)a3;
- (BOOL)_hasValidMeasurementForSide:(id)a3;
- (BOOL)_isDate:(id)a3 lesserThanOrEqualToMonths:(unsigned __int8)a4;
- (BOOL)hasMeasurementChangedForSide:(id)a3 withRecord:(id)a4;
- (BOOL)isDeviceUsedFor3MonthsOrLess;
- (BOOL)updateFaultCountsFromCloudRecord:(id)a3;
- (HMDeviceDiagnosticRecord)initWithCoder:(id)a3;
- (HMDeviceDiagnosticRecord)initWithHMDeviceRecord:(id)a3 isNewPairing:(BOOL)a4;
- (id)descriptionWithLevel:(int)a3;
- (id)getCloudRecordForCurrentFaultCount;
- (id)getOnDemandRetestReason;
- (id)measurementInvalidReason;
- (int)computeOcclusionResultForHearingProtection;
- (int)computeOcclusionResultForHearingTest;
- (int64_t)_minutesSinceTimestamp:(id)a3;
- (unsigned)_getMinimumRequiredPayloadLength;
- (void)_prefsLoadOcclusionStats;
- (void)_prefsSaveOcclusionStats;
- (void)_resetAllOcclusionStats;
- (void)_updateLeftSideFaultCountWithCloudRecord:(id)a3;
- (void)_updateRightSideFaultCountWithCloudRecord:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)resetFaultCounts;
- (void)setIsNewPairing:(BOOL)a3;
- (void)updateWithANCLossScores:(id)a3;
- (void)updateWithDiagnosticData:(id)a3;
- (void)updateWithMeasurementData:(id)a3;
- (void)updateWithMeasurementDataLegacyVersion:(id)a3;
@end

@implementation HMDeviceDiagnosticRecord

- (HMDeviceDiagnosticRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDeviceDiagnosticRecord *)self init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ancLossTypeLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ancLossTypeRight = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_errMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_errMicStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyAccuracyLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frequencyAccuracyRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frontVentStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_frontVentStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_generalSystemStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_generalSystemStatusRight = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_latestMeasurementResultLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_latestMeasurementResultRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rearVentStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_rearVentStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_refMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_refMicStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_speakerStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_speakerStatusRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_totalHarmonicDistortionLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_totalHarmonicDistortionRight = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vceMicStatusLeft = 0;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_vceMicStatusRight = 0;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  bluetoothUUID = self->_bluetoothUUID;
  v42 = v4;
  if (bluetoothUUID)
  {
    [v4 encodeObject:bluetoothUUID forKey:@"btUUID"];
    v4 = v42;
  }

  bluetoothAddress = self->_bluetoothAddress;
  if (bluetoothAddress)
  {
    [v42 encodeObject:bluetoothAddress forKey:@"btAdS"];
    v4 = v42;
  }

  ancLossTypeLeft = self->_ancLossTypeLeft;
  if (ancLossTypeLeft)
  {
    [v42 encodeInteger:ancLossTypeLeft forKey:@"ancL"];
    v4 = v42;
  }

  ancLossTypeRight = self->_ancLossTypeRight;
  if (ancLossTypeRight)
  {
    [v42 encodeInteger:ancLossTypeRight forKey:@"ancR"];
    v4 = v42;
  }

  ancCleanLossScoreLeft = self->_ancCleanLossScoreLeft;
  if (ancCleanLossScoreLeft)
  {
    [v42 encodeObject:ancCleanLossScoreLeft forKey:@"cLSL"];
    v4 = v42;
  }

  ancCleanLossScoreRight = self->_ancCleanLossScoreRight;
  if (ancCleanLossScoreRight)
  {
    [v42 encodeObject:ancCleanLossScoreRight forKey:@"cLSR"];
    v4 = v42;
  }

  ancFullLossScoreLeft = self->_ancFullLossScoreLeft;
  if (ancFullLossScoreLeft)
  {
    [v42 encodeObject:ancFullLossScoreLeft forKey:@"fLSL"];
    v4 = v42;
  }

  ancFullLossScoreRight = self->_ancFullLossScoreRight;
  if (ancFullLossScoreRight)
  {
    [v42 encodeObject:ancFullLossScoreRight forKey:@"fLSR"];
    v4 = v42;
  }

  ancSevereLossScoreLeft = self->_ancSevereLossScoreLeft;
  if (ancSevereLossScoreLeft)
  {
    [v42 encodeObject:ancSevereLossScoreLeft forKey:@"sLSL"];
    v4 = v42;
  }

  ancSevereLossScoreRight = self->_ancSevereLossScoreRight;
  if (ancSevereLossScoreRight)
  {
    [v42 encodeObject:ancSevereLossScoreRight forKey:@"sLSR"];
    v4 = v42;
  }

  daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
  if (daysSinceLastMeasurementLeft)
  {
    [v42 encodeObject:daysSinceLastMeasurementLeft forKey:@"dslml"];
    v4 = v42;
  }

  daysSinceLastMeasurementRight = self->_daysSinceLastMeasurementRight;
  if (daysSinceLastMeasurementRight)
  {
    [v42 encodeObject:daysSinceLastMeasurementRight forKey:@"dslmr"];
    v4 = v42;
  }

  daysSinceLastHarmonicMeasurementLeft = self->_daysSinceLastHarmonicMeasurementLeft;
  if (daysSinceLastHarmonicMeasurementLeft)
  {
    [v42 encodeObject:daysSinceLastHarmonicMeasurementLeft forKey:@"dsHml"];
    v4 = v42;
  }

  daysSinceLastHarmonicMeasurementRight = self->_daysSinceLastHarmonicMeasurementRight;
  if (daysSinceLastHarmonicMeasurementRight)
  {
    [v42 encodeObject:daysSinceLastHarmonicMeasurementRight forKey:@"dsHmr"];
    v4 = v42;
  }

  errMicStatusLeft = self->_errMicStatusLeft;
  if (errMicStatusLeft)
  {
    [v42 encodeInteger:errMicStatusLeft forKey:@"errFL"];
    v4 = v42;
  }

  errMicStatusRight = self->_errMicStatusRight;
  if (errMicStatusRight)
  {
    [v42 encodeInteger:errMicStatusRight forKey:@"errFR"];
    v4 = v42;
  }

  frequencyAccuracyLeft = self->_frequencyAccuracyLeft;
  if (frequencyAccuracyLeft)
  {
    [v42 encodeInteger:frequencyAccuracyLeft forKey:@"fqAcL"];
    v4 = v42;
  }

  frequencyAccuracyRight = self->_frequencyAccuracyRight;
  if (frequencyAccuracyRight)
  {
    [v42 encodeInteger:frequencyAccuracyRight forKey:@"fqAcR"];
    v4 = v42;
  }

  frontVentStatusLeft = self->_frontVentStatusLeft;
  if (frontVentStatusLeft)
  {
    [v42 encodeInteger:frontVentStatusLeft forKey:@"fvnFL"];
    v4 = v42;
  }

  frontVentStatusRight = self->_frontVentStatusRight;
  if (frontVentStatusRight)
  {
    [v42 encodeInteger:frontVentStatusRight forKey:@"fvnFR"];
    v4 = v42;
  }

  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft)
  {
    [v42 encodeInteger:generalSystemStatusLeft forKey:@"gnrFL"];
    v4 = v42;
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight)
  {
    [v42 encodeInteger:generalSystemStatusRight forKey:@"gnrFR"];
    v4 = v42;
  }

  lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
  if (lastMeasurementTimestampLeft)
  {
    [v42 encodeObject:lastMeasurementTimestampLeft forKey:@"lmTsL"];
    v4 = v42;
  }

  lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
  if (lastMeasurementTimestampRight)
  {
    [v42 encodeObject:lastMeasurementTimestampRight forKey:@"lmTsR"];
    v4 = v42;
  }

  latestMeasurementResultLeft = self->_latestMeasurementResultLeft;
  if (latestMeasurementResultLeft)
  {
    [v42 encodeInteger:latestMeasurementResultLeft forKey:@"lmRsL"];
    v4 = v42;
  }

  latestMeasurementResultRight = self->_latestMeasurementResultRight;
  if (latestMeasurementResultRight)
  {
    [v42 encodeInteger:latestMeasurementResultRight forKey:@"lmRsR"];
    v4 = v42;
  }

  rearVentStatusLeft = self->_rearVentStatusLeft;
  if (rearVentStatusLeft)
  {
    [v42 encodeInteger:rearVentStatusLeft forKey:@"rvnFL"];
    v4 = v42;
  }

  rearVentStatusRight = self->_rearVentStatusRight;
  if (rearVentStatusRight)
  {
    [v42 encodeInteger:rearVentStatusRight forKey:@"rvnFR"];
    v4 = v42;
  }

  refMicStatusLeft = self->_refMicStatusLeft;
  if (refMicStatusLeft)
  {
    [v42 encodeInteger:refMicStatusLeft forKey:@"refFL"];
    v4 = v42;
  }

  refMicStatusRight = self->_refMicStatusRight;
  if (refMicStatusRight)
  {
    [v42 encodeInteger:refMicStatusRight forKey:@"refFR"];
    v4 = v42;
  }

  speakerStatusLeft = self->_speakerStatusLeft;
  if (speakerStatusLeft)
  {
    [v42 encodeInteger:speakerStatusLeft forKey:@"sprFL"];
    v4 = v42;
  }

  speakerStatusRight = self->_speakerStatusRight;
  if (speakerStatusRight)
  {
    [v42 encodeInteger:speakerStatusRight forKey:@"sprFR"];
    v4 = v42;
  }

  totalHarmonicDistortionLeft = self->_totalHarmonicDistortionLeft;
  if (totalHarmonicDistortionLeft)
  {
    [v42 encodeInteger:totalHarmonicDistortionLeft forKey:@"thdL"];
    v4 = v42;
  }

  totalHarmonicDistortionRight = self->_totalHarmonicDistortionRight;
  if (totalHarmonicDistortionRight)
  {
    [v42 encodeInteger:totalHarmonicDistortionRight forKey:@"thdR"];
    v4 = v42;
  }

  vceMicStatusLeft = self->_vceMicStatusLeft;
  if (vceMicStatusLeft)
  {
    [v42 encodeInteger:vceMicStatusLeft forKey:@"vceFL"];
    v4 = v42;
  }

  vceMicStatusRight = self->_vceMicStatusRight;
  if (vceMicStatusRight)
  {
    [v42 encodeInteger:vceMicStatusRight forKey:@"vceFR"];
    v4 = v42;
  }

  version = self->_version;
  if (version)
  {
    [v42 encodeObject:version forKey:@"versn"];
    v4 = v42;
  }
}

- (id)descriptionWithLevel:(int)a3
{
  v120 = [objc_opt_class() description];
  NSAppendPrintF_safe();
  v5 = 0;

  if (a3 <= 20)
  {
    NSAppendPrintF_safe();
    v6 = v5;

    v5 = v6;
  }

  v7 = self->_bluetoothAddress;
  v8 = v7;
  if (v7)
  {
    v120 = v7;
    NSAppendPrintF_safe();
    v9 = v5;

    v5 = v9;
  }

  v10 = self->_bluetoothUUID;
  v11 = v10;
  if (v10)
  {
    v120 = v10;
    NSAppendPrintF_safe();
    v12 = v5;

    v5 = v12;
  }

  productID = self->_productID;
  if (productID)
  {
    if (productID <= 665)
    {
      if (productID <= 570)
      {
        if (productID > 556)
        {
          if (productID <= 568 && productID != 557 && productID != 558)
          {
            goto LABEL_195;
          }
        }

        else if (productID > 521)
        {
          if (productID != 522 && productID != 556)
          {
            goto LABEL_195;
          }
        }

        else if (productID != 520 && productID != 521)
        {
          goto LABEL_195;
        }

        goto LABEL_56;
      }

      if (productID <= 612)
      {
        if (productID > 597)
        {
          if (productID != 598 && productID != 599)
          {
            goto LABEL_195;
          }
        }

        else if (productID != 571 && productID != 597)
        {
          goto LABEL_195;
        }

LABEL_56:
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
        v16 = v15;
        v17 = @"apple_wireless_keyboard";
        goto LABEL_72;
      }

      if (productID <= 616)
      {
        if (productID != 613)
        {
          if (productID != 615)
          {
            goto LABEL_195;
          }

LABEL_59:
          v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
          v16 = v15;
          v17 = @"apple_magic_keyboard";
          goto LABEL_72;
        }

LABEL_60:
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
        v16 = v15;
        v17 = @"apple_magic_trackpad";
        goto LABEL_72;
      }

      if (productID != 617)
      {
        if (productID == 620)
        {
          v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
          v16 = v15;
          v17 = @"apple_magic_keyboard_keypad";
          goto LABEL_72;
        }

        goto LABEL_195;
      }

LABEL_64:
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
      v16 = v15;
      v17 = @"apple_magic_mouse";
      goto LABEL_72;
    }

    if (productID <= 800)
    {
      if (productID > 779)
      {
        if (productID <= 781)
        {
          if (productID == 780)
          {
            v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
            v16 = v15;
            v17 = @"apple_mighty_mouse";
            goto LABEL_72;
          }

          goto LABEL_64;
        }

        if (productID == 782)
        {
          goto LABEL_60;
        }

        if (productID == 800)
        {
          goto LABEL_59;
        }

LABEL_195:
        v16 = [MEMORY[0x277CBE070] productInfoWithProductID:v120];
        v18 = [v16 productName];
        goto LABEL_73;
      }

      if (productID <= 670)
      {
        if (productID != 666)
        {
          if (productID == 668)
          {
            goto LABEL_59;
          }

          goto LABEL_195;
        }

LABEL_69:
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
        v16 = v15;
        v17 = @"apple_magic_keyboard_touch";
        goto LABEL_72;
      }

      if (productID != 671)
      {
        if (productID == 777)
        {
          v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
          v16 = v15;
          v17 = @"apple_wireless_mouse";
LABEL_72:
          v18 = [v15 localizedStringForKey:v17 value:&stru_2864344A8 table:@"CBLocalizable"];
LABEL_73:
          v19 = v18;

          NSAppendPrintF_safe();
          v20 = v5;

          v5 = v20;
          goto LABEL_74;
        }

        goto LABEL_195;
      }

LABEL_70:
      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
      v16 = v15;
      v17 = @"apple_magic_keyboard_touch_keypad";
      goto LABEL_72;
    }

    if (productID <= 8212)
    {
      if (productID > 802)
      {
        if (productID != 803)
        {
          if (productID != 804)
          {
            goto LABEL_195;
          }

          goto LABEL_60;
        }

        goto LABEL_64;
      }

      if (productID == 801)
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    if (productID > 8219)
    {
      if (productID == 8220)
      {
        goto LABEL_68;
      }

      v14 = 8233;
    }

    else
    {
      if (productID == 8213)
      {
        goto LABEL_68;
      }

      v14 = 8216;
    }

    if (productID != v14)
    {
      goto LABEL_195;
    }

LABEL_68:
    v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreBluetooth", v120}];
    v16 = v15;
    v17 = @"apple_airpods_case";
    goto LABEL_72;
  }

LABEL_74:
  v21 = self->_lastMeasurementTimestampLeft;
  if (v21)
  {
    NSAppendPrintF_safe();
    v22 = v5;

    v5 = v22;
  }

  v23 = self->_lastMeasurementTimestampRight;
  if (v23)
  {
    NSAppendPrintF_safe();
    v24 = v5;

    v5 = v24;
  }

  ancLossTypeLeft = self->_ancLossTypeLeft;
  if (ancLossTypeLeft)
  {
    if (ancLossTypeLeft <= 3)
    {
      v26 = off_2796EE730[ancLossTypeLeft - 1];
    }

    NSAppendPrintF_safe();
    v27 = v5;

    v5 = v27;
  }

  ancLossTypeRight = self->_ancLossTypeRight;
  if (ancLossTypeRight)
  {
    if (ancLossTypeRight <= 3)
    {
      v29 = off_2796EE730[ancLossTypeRight - 1];
    }

    NSAppendPrintF_safe();
    v30 = v5;

    v5 = v30;
  }

  v31 = self->_ancCleanLossScoreLeft;
  if (v31)
  {
    NSAppendPrintF_safe();
    v32 = v5;

    v5 = v32;
  }

  v33 = self->_ancCleanLossScoreRight;
  if (v33)
  {
    NSAppendPrintF_safe();
    v34 = v5;

    v5 = v34;
  }

  v35 = self->_ancFullLossScoreLeft;
  if (v35)
  {
    NSAppendPrintF_safe();
    v36 = v5;

    v5 = v36;
  }

  v37 = self->_ancFullLossScoreRight;
  if (v37)
  {
    NSAppendPrintF_safe();
    v38 = v5;

    v5 = v38;
  }

  v39 = self->_ancSevereLossScoreLeft;
  if (v39)
  {
    NSAppendPrintF_safe();
    v40 = v5;

    v5 = v40;
  }

  v41 = self->_ancSevereLossScoreRight;
  if (v41)
  {
    NSAppendPrintF_safe();
    v42 = v5;

    v5 = v42;
  }

  v43 = self->_daysSinceLastMeasurementLeft;
  if (v43)
  {
    NSAppendPrintF_safe();
    v44 = v5;

    v5 = v44;
  }

  v45 = self->_daysSinceLastMeasurementRight;
  if (v45)
  {
    NSAppendPrintF_safe();
    v46 = v5;

    v5 = v46;
  }

  v47 = self->_daysSinceLastHarmonicMeasurementLeft;
  if (v47)
  {
    NSAppendPrintF_safe();
    v48 = v5;

    v5 = v48;
  }

  v49 = self->_daysSinceLastHarmonicMeasurementRight;
  if (v49)
  {
    NSAppendPrintF_safe();
    v50 = v5;

    v5 = v50;
  }

  errMicStatusLeft = self->_errMicStatusLeft;
  if (errMicStatusLeft)
  {
    if (errMicStatusLeft <= 5)
    {
      v52 = off_2796EE788[errMicStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v53 = v5;

    v5 = v53;
  }

  errMicStatusRight = self->_errMicStatusRight;
  if (errMicStatusRight)
  {
    if (errMicStatusRight <= 5)
    {
      v55 = off_2796EE788[errMicStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v56 = v5;

    v5 = v56;
  }

  v57 = self->_firstTimeUseTimestampLeft;
  if (v57)
  {
    NSAppendPrintF_safe();
    v58 = v5;

    v5 = v58;
  }

  v59 = self->_firstTimeUseTimestampRight;
  if (v59)
  {
    NSAppendPrintF_safe();
    v60 = v5;

    v5 = v60;
  }

  frequencyAccuracyLeft = self->_frequencyAccuracyLeft;
  if (frequencyAccuracyLeft)
  {
    if (frequencyAccuracyLeft <= 5)
    {
      v62 = off_2796EE788[frequencyAccuracyLeft - 1];
    }

    NSAppendPrintF_safe();
    v63 = v5;

    v5 = v63;
  }

  frequencyAccuracyRight = self->_frequencyAccuracyRight;
  if (frequencyAccuracyRight)
  {
    if (frequencyAccuracyRight <= 5)
    {
      v65 = off_2796EE788[frequencyAccuracyRight - 1];
    }

    NSAppendPrintF_safe();
    v66 = v5;

    v5 = v66;
  }

  frontVentStatusLeft = self->_frontVentStatusLeft;
  if (frontVentStatusLeft)
  {
    if (frontVentStatusLeft <= 5)
    {
      v68 = off_2796EE788[frontVentStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v69 = v5;

    v5 = v69;
  }

  frontVentStatusRight = self->_frontVentStatusRight;
  if (frontVentStatusRight)
  {
    if (frontVentStatusRight <= 5)
    {
      v71 = off_2796EE788[frontVentStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v72 = v5;

    v5 = v72;
  }

  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft)
  {
    if (generalSystemStatusLeft <= 5)
    {
      v74 = off_2796EE788[generalSystemStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v75 = v5;

    v5 = v75;
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight)
  {
    if (generalSystemStatusRight <= 5)
    {
      v77 = off_2796EE788[generalSystemStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v78 = v5;

    v5 = v78;
  }

  latestMeasurementResultLeft = self->_latestMeasurementResultLeft;
  if (latestMeasurementResultLeft)
  {
    if (latestMeasurementResultLeft <= 8)
    {
      v80 = off_2796EE748[latestMeasurementResultLeft - 1];
    }

    NSAppendPrintF_safe();
    v81 = v5;

    v5 = v81;
  }

  latestMeasurementResultRight = self->_latestMeasurementResultRight;
  if (latestMeasurementResultRight)
  {
    if (latestMeasurementResultRight <= 8)
    {
      v83 = off_2796EE748[latestMeasurementResultRight - 1];
    }

    NSAppendPrintF_safe();
    v84 = v5;

    v5 = v84;
  }

  rearVentStatusLeft = self->_rearVentStatusLeft;
  if (rearVentStatusLeft)
  {
    if (rearVentStatusLeft <= 5)
    {
      v86 = off_2796EE788[rearVentStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v87 = v5;

    v5 = v87;
  }

  rearVentStatusRight = self->_rearVentStatusRight;
  if (rearVentStatusRight)
  {
    if (rearVentStatusRight <= 5)
    {
      v89 = off_2796EE788[rearVentStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v90 = v5;

    v5 = v90;
  }

  refMicStatusLeft = self->_refMicStatusLeft;
  if (refMicStatusLeft)
  {
    if (refMicStatusLeft <= 5)
    {
      v92 = off_2796EE788[refMicStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v93 = v5;

    v5 = v93;
  }

  refMicStatusRight = self->_refMicStatusRight;
  if (refMicStatusRight)
  {
    if (refMicStatusRight <= 5)
    {
      v95 = off_2796EE788[refMicStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v96 = v5;

    v5 = v96;
  }

  speakerStatusLeft = self->_speakerStatusLeft;
  if (speakerStatusLeft)
  {
    if (speakerStatusLeft <= 5)
    {
      v98 = off_2796EE788[speakerStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v99 = v5;

    v5 = v99;
  }

  speakerStatusRight = self->_speakerStatusRight;
  if (speakerStatusRight)
  {
    if (speakerStatusRight <= 5)
    {
      v101 = off_2796EE788[speakerStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v102 = v5;

    v5 = v102;
  }

  totalHarmonicDistortionLeft = self->_totalHarmonicDistortionLeft;
  if (totalHarmonicDistortionLeft)
  {
    if (totalHarmonicDistortionLeft <= 5)
    {
      v104 = off_2796EE788[totalHarmonicDistortionLeft - 1];
    }

    NSAppendPrintF_safe();
    v105 = v5;

    v5 = v105;
  }

  totalHarmonicDistortionRight = self->_totalHarmonicDistortionRight;
  if (totalHarmonicDistortionRight)
  {
    if (totalHarmonicDistortionRight <= 5)
    {
      v107 = off_2796EE788[totalHarmonicDistortionRight - 1];
    }

    NSAppendPrintF_safe();
    v108 = v5;

    v5 = v108;
  }

  vceMicStatusLeft = self->_vceMicStatusLeft;
  if (vceMicStatusLeft)
  {
    if (vceMicStatusLeft <= 5)
    {
      v110 = off_2796EE788[vceMicStatusLeft - 1];
    }

    NSAppendPrintF_safe();
    v111 = v5;

    v5 = v111;
  }

  vceMicStatusRight = self->_vceMicStatusRight;
  if (vceMicStatusRight)
  {
    if (vceMicStatusRight <= 5)
    {
      v113 = off_2796EE788[vceMicStatusRight - 1];
    }

    NSAppendPrintF_safe();
    v114 = v5;

    v5 = v114;
  }

  v115 = self->_version;
  if (v115)
  {
    NSAppendPrintF_safe();
    v116 = v5;

    v5 = v116;
  }

  if (a3 < 21)
  {
    NSAppendPrintF_safe();
    v117 = v5;

    v5 = v117;
  }

  v118 = v5;

  return v5;
}

- (HMDeviceDiagnosticRecord)initWithHMDeviceRecord:(id)a3 isNewPairing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HMDeviceDiagnosticRecord;
  v7 = [(HMDeviceDiagnosticRecord *)&v17 init];
  if (v7)
  {
    v8 = [v6 bluetoothAddress];
    objc_storeStrong(&v7->_bluetoothAddress, v8);
    v9 = [v6 bluetoothUUID];
    objc_storeStrong(&v7->_bluetoothUUID, v9);
    v10 = [v6 aaDevice];
    v11 = [v10 coreBluetoothDevice];
    v12 = [v11 productID];

    v7->_productID = v12;
    v13 = [v6 aaDevice];
    v14 = [v13 firmwareVersion];
    firmwareVersion = v7->_firmwareVersion;
    v7->_firmwareVersion = v14;

    [(HMDeviceDiagnosticRecord *)v7 _prefsLoadOcclusionStats];
    if (v4)
    {
      [(HMDeviceDiagnosticRecord *)v7 _resetAllOcclusionStats];
    }
  }

  return v7;
}

- (void)setIsNewPairing:(BOOL)a3
{
  if (a3)
  {
    [(HMDeviceDiagnosticRecord *)self _resetAllOcclusionStats];
  }
}

+ (int)getHMDiagnosticMeasurementStatusForValue:(unsigned __int8)a3
{
  if (a3 < 8u)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (int)getHMDiagnosticStatusForValue:(unsigned __int8)a3
{
  if (a3 < 5u)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_hasValidMeasurementForSide:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == @"left")
  {
    goto LABEL_4;
  }

  if (!v4)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [(__CFString *)v4 isEqual:@"left"];

  if ((v6 & 1) == 0)
  {
    v9 = v5;
    if (v9 == @"right" || (v10 = v9, v11 = [(__CFString *)v9 isEqual:@"right"], v10, v11))
    {
      v7 = 104;
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_4:
  v7 = 100;
LABEL_5:
  v8 = (*(&self->super.isa + v7) - 1) < 2;
LABEL_10:

  return v8;
}

- (BOOL)_isDate:(id)a3 lesserThanOrEqualToMonths:(unsigned __int8)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v7 components:28 fromDate:v5 toDate:v6 options:0];
    if (gLogCategory_HMDeviceDiagnosticRecord <= 10 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
    {
      [HMDeviceDiagnosticRecord _isDate:v8 lesserThanOrEqualToMonths:?];
    }

    v9 = [v8 year] <= 0 && objc_msgSend(v8, "month") <= v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unsigned)_getMinimumRequiredPayloadLength
{
  if ([(NSNumber *)self->_version intValue]< 5)
  {
    return 33;
  }

  if ([(NSNumber *)self->_version intValue]<= 4)
  {
    return 0;
  }

  return 57;
}

- (int64_t)_minutesSinceTimestamp:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  v5 = [v3 now];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 components:224 fromDate:v4 toDate:v5 options:0];

  v8 = [v7 minute];
  return v8;
}

- (id)getCloudRecordForCurrentFaultCount
{
  v3 = [objc_alloc(MEMORY[0x277CEF830]) initWithBluetoothAddress:self->_bluetoothAddress];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountLeft];
  [v3 setBottomMicFaultCountLeft:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountLeft];
  [v3 setTopMicFaultCountLeft:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountLeft];
  [v3 setInnerMicFaultCountLeft:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountLeft];
  [v3 setSpeakerFaultCountLeft:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountLeft];
  [v3 setFrontVentFaultCountLeft:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountLeft];
  [v3 setRearVentFaultCountLeft:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountLeft];
  [v3 setTotalHarmonicDistortionFaultCountLeft:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountLeft];
  [v3 setFreqAccuracyFaultCountLeft:v11];

  [v3 setLatestDiagnosticTimestampLeft:self->_lastMeasurementTimestampLeft];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_bottomMicFaultCountRight];
  [v3 setBottomMicFaultCountRight:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_topMicFaultCountRight];
  [v3 setTopMicFaultCountRight:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_innerMicFaultCountRight];
  [v3 setInnerMicFaultCountRight:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_speakerFaultCountRight];
  [v3 setSpeakerFaultCountRight:v15];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_frontVentFaultCountRight];
  [v3 setFrontVentFaultCountRight:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_rearVentFaultCountRight];
  [v3 setRearVentFaultCountRight:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_totalHarmonicDistortionFaultCountRight];
  [v3 setTotalHarmonicDistortionFaultCountRight:v18];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_freqAccuracyFaultCountRight];
  [v3 setFreqAccuracyFaultCountRight:v19];

  [v3 setLatestDiagnosticTimestampRight:self->_lastMeasurementTimestampRight];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_diagnosticMeasurementsCount];
  [v3 setDiagnosticMeasurementsCount:v20];

  return v3;
}

- (void)resetFaultCounts
{
  self->_totalHarmonicDistortionFaultCountRight = 0;
  *&self->_speakerFaultCountRight = 0u;
  *&self->_innerMicFaultCountRight = 0u;
  *&self->_freqAccuracyFaultCountRight = 0u;
  *&self->_bottomMicFaultCountLeft = 0u;
}

- (void)_updateLeftSideFaultCountWithCloudRecord:(id)a3
{
  v4 = a3;
  v38 = v4;
  if (self->_vceMicStatusLeft == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 bottomMicFaultCountLeft];
    v7 = [v6 unsignedIntValue];

    if (v7 >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if (self->_vceMicStatusLeft == 2)
    {
      v5 = v8 + 1;
    }

    else
    {
      v5 = v7;
    }
  }

  self->_bottomMicFaultCountLeft = v5;
  if (self->_refMicStatusLeft == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v38 topMicFaultCountLeft];
    v11 = [v10 unsignedIntValue];

    if (v11 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (self->_refMicStatusLeft == 2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v9 = v11;
    }
  }

  self->_topMicFaultCountLeft = v9;
  if (self->_errMicStatusLeft == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v38 innerMicFaultCountLeft];
    v15 = [v14 unsignedIntValue];

    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (self->_errMicStatusLeft == 2)
    {
      v13 = v16 + 1;
    }

    else
    {
      v13 = v15;
    }
  }

  self->_innerMicFaultCountLeft = v13;
  if (self->_speakerStatusLeft == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = [v38 speakerFaultCountLeft];
    v19 = [v18 unsignedIntValue];

    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    if (self->_speakerStatusLeft == 2)
    {
      v17 = v20 + 1;
    }

    else
    {
      v17 = v19;
    }
  }

  self->_speakerFaultCountLeft = v17;
  if (self->_frontVentStatusLeft == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = [v38 frontVentFaultCountLeft];
    v23 = [v22 unsignedIntValue];

    if (v23 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v23;
    }

    if (self->_frontVentStatusLeft == 2)
    {
      v21 = v24 + 1;
    }

    else
    {
      v21 = v23;
    }
  }

  self->_frontVentFaultCountLeft = v21;
  if (self->_rearVentStatusLeft == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = [v38 rearVentFaultCountLeft];
    v27 = [v26 unsignedIntValue];

    if (v27 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    if (self->_rearVentStatusLeft == 2)
    {
      v25 = v28 + 1;
    }

    else
    {
      v25 = v27;
    }
  }

  self->_rearVentFaultCountLeft = v25;
  if (self->_totalHarmonicDistortionLeft == 1)
  {
    v29 = 0;
  }

  else
  {
    v30 = [v38 totalHarmonicDistortionFaultCountLeft];
    v31 = [v30 unsignedIntValue];

    if (v31 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v31;
    }

    if (self->_totalHarmonicDistortionLeft == 2)
    {
      v29 = v32 + 1;
    }

    else
    {
      v29 = v31;
    }
  }

  self->_totalHarmonicDistortionFaultCountLeft = v29;
  if (self->_frequencyAccuracyLeft == 1)
  {
    v33 = 0;
    v34 = v38;
  }

  else
  {
    v35 = [v38 freqAccuracyFaultCountLeft];
    v36 = [v35 unsignedIntValue];

    v34 = v38;
    if (v36 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v36;
    }

    if (self->_frequencyAccuracyLeft == 2)
    {
      v33 = v37 + 1;
    }

    else
    {
      v33 = v36;
    }
  }

  self->_freqAccuracyFaultCountLeft = v33;
}

- (void)_updateRightSideFaultCountWithCloudRecord:(id)a3
{
  v4 = a3;
  v38 = v4;
  if (self->_vceMicStatusRight == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 bottomMicFaultCountRight];
    v7 = [v6 unsignedIntValue];

    if (v7 >= 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v7;
    }

    if (self->_vceMicStatusRight == 2)
    {
      v5 = v8 + 1;
    }

    else
    {
      v5 = v7;
    }
  }

  self->_bottomMicFaultCountRight = v5;
  if (self->_refMicStatusRight == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v38 topMicFaultCountRight];
    v11 = [v10 unsignedIntValue];

    if (v11 >= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = v11;
    }

    if (self->_refMicStatusRight == 2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v9 = v11;
    }
  }

  self->_topMicFaultCountRight = v9;
  if (self->_errMicStatusRight == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = [v38 innerMicFaultCountRight];
    v15 = [v14 unsignedIntValue];

    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v15;
    }

    if (self->_errMicStatusRight == 2)
    {
      v13 = v16 + 1;
    }

    else
    {
      v13 = v15;
    }
  }

  self->_innerMicFaultCountRight = v13;
  if (self->_speakerStatusRight == 1)
  {
    v17 = 0;
  }

  else
  {
    v18 = [v38 speakerFaultCountRight];
    v19 = [v18 unsignedIntValue];

    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }

    if (self->_speakerStatusRight == 2)
    {
      v17 = v20 + 1;
    }

    else
    {
      v17 = v19;
    }
  }

  self->_speakerFaultCountRight = v17;
  if (self->_frontVentStatusRight == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = [v38 frontVentFaultCountRight];
    v23 = [v22 unsignedIntValue];

    if (v23 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v23;
    }

    if (self->_frontVentStatusRight == 2)
    {
      v21 = v24 + 1;
    }

    else
    {
      v21 = v23;
    }
  }

  self->_frontVentFaultCountRight = v21;
  if (self->_rearVentStatusRight == 1)
  {
    v25 = 0;
  }

  else
  {
    v26 = [v38 rearVentFaultCountRight];
    v27 = [v26 unsignedIntValue];

    if (v27 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v27;
    }

    if (self->_rearVentStatusRight == 2)
    {
      v25 = v28 + 1;
    }

    else
    {
      v25 = v27;
    }
  }

  self->_rearVentFaultCountRight = v25;
  if (self->_totalHarmonicDistortionRight == 1)
  {
    v29 = 0;
  }

  else
  {
    v30 = [v38 totalHarmonicDistortionFaultCountRight];
    v31 = [v30 unsignedIntValue];

    if (v31 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v31;
    }

    if (self->_totalHarmonicDistortionRight == 2)
    {
      v29 = v32 + 1;
    }

    else
    {
      v29 = v31;
    }
  }

  self->_totalHarmonicDistortionFaultCountRight = v29;
  if (self->_frequencyAccuracyRight == 1)
  {
    v33 = 0;
    v34 = v38;
  }

  else
  {
    v35 = [v38 freqAccuracyFaultCountRight];
    v36 = [v35 unsignedIntValue];

    v34 = v38;
    if (v36 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v36;
    }

    if (self->_frequencyAccuracyRight == 2)
    {
      v33 = v37 + 1;
    }

    else
    {
      v33 = v36;
    }
  }

  self->_freqAccuracyFaultCountRight = v33;
}

- (void)updateWithDiagnosticData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v8 = 0;
    [v5 getBytes:&v8 length:1];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v8];
    version = self->_version;
    self->_version = v6;

    if (v8 == 2)
    {
      [(HMDeviceDiagnosticRecord *)self updateWithMeasurementDataLegacyVersion:v5];
    }

    else if (v8 >= 3u)
    {
      [(HMDeviceDiagnosticRecord *)self updateWithMeasurementData:v5];
    }
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    [HMDeviceDiagnosticRecord updateWithDiagnosticData:?];
  }
}

- (void)updateWithMeasurementDataLegacyVersion:(id)a3
{
  v4 = a3;
  if ([v4 length] > 0x18)
  {
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    [v4 getBytes:v14 length:25];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v14 + 1)];
    daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
    self->_daysSinceLastMeasurementLeft = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(v14 + 3)];
    daysSinceLastMeasurementRight = self->_daysSinceLastMeasurementRight;
    self->_daysSinceLastMeasurementRight = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(&v14[1] + 5)];
    daysSinceLastHarmonicMeasurementLeft = self->_daysSinceLastHarmonicMeasurementLeft;
    self->_daysSinceLastHarmonicMeasurementLeft = v9;

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(&v14[1] + 7)];
    daysSinceLastHarmonicMeasurementRight = self->_daysSinceLastHarmonicMeasurementRight;
    self->_daysSinceLastHarmonicMeasurementRight = v11;

    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultLeft:*(v14 + 5)];
    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultRight:*(&v14[1] + 1)];
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    bluetoothUUID = self->_bluetoothUUID;
    LogPrintF();
  }
}

- (void)updateWithMeasurementData:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5 >= [(HMDeviceDiagnosticRecord *)self _getMinimumRequiredPayloadLength])
  {
    memset(v16, 0, 57);
    [v4 getBytes:v16 length:57];
    if (*(v16 + 1))
    {
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(v16 + 1)];
      lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
      self->_lastMeasurementTimestampLeft = v6;
    }

    if (*(v16 + 9))
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(v16 + 9)];
      lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
      self->_lastMeasurementTimestampRight = v8;
    }

    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultLeft:*(&v16[1] + 1)];
    [(HMDeviceDiagnosticRecord *)self updateWithMeasurementResultRight:*(&v16[1] + 5)];
    if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
    {
      [(HMDeviceDiagnosticRecord *)self updateWithANCLossScores:*(&v16[1] + 9)];
    }

    if ([(HMDeviceDiagnosticRecord *)self _isFirstTimeOfUseSupported])
    {
      if (*(&v16[2] + 1))
      {
        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(&v16[2] + 1)];
        firstTimeUseTimestampLeft = self->_firstTimeUseTimestampLeft;
        self->_firstTimeUseTimestampLeft = v10;
      }

      if (*(&v16[2] + 5))
      {
        v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:*(&v16[2] + 5)];
        firstTimeUseTimestampRight = self->_firstTimeUseTimestampRight;
        self->_firstTimeUseTimestampRight = v12;
      }
    }
  }

  else if (gLogCategory_HMDeviceDiagnosticRecord <= 90 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    version = self->_version;
    bluetoothUUID = self->_bluetoothUUID;
    LogPrintF();
  }
}

- (id)getOnDemandRetestReason
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount <= 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Insufficient Results: %d", diagnosticMeasurementsCount];
    v19 = LABEL_35:;
    goto LABEL_36;
  }

  bottomMicFaultCountLeft = self->_bottomMicFaultCountLeft;
  if ((bottomMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Bottom Mic Fault with count: %d", bottomMicFaultCountLeft];
    goto LABEL_35;
  }

  bottomMicFaultCountRight = self->_bottomMicFaultCountRight;
  if ((bottomMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Bottom Mic Fault with count: %d", bottomMicFaultCountRight];
    goto LABEL_35;
  }

  topMicFaultCountLeft = self->_topMicFaultCountLeft;
  if ((topMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Top Mic Fault with count: %d", topMicFaultCountLeft];
    goto LABEL_35;
  }

  topMicFaultCountRight = self->_topMicFaultCountRight;
  if ((topMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Top Mic Fault with count: %d", topMicFaultCountRight];
    goto LABEL_35;
  }

  innerMicFaultCountLeft = self->_innerMicFaultCountLeft;
  if ((innerMicFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Inner Mic Fault with count: %d", innerMicFaultCountLeft];
    goto LABEL_35;
  }

  innerMicFaultCountRight = self->_innerMicFaultCountRight;
  if ((innerMicFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Inner Mic Fault with count: %d", innerMicFaultCountRight];
    goto LABEL_35;
  }

  speakerFaultCountLeft = self->_speakerFaultCountLeft;
  if ((speakerFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Speaker Fault with count: %d", speakerFaultCountLeft];
    goto LABEL_35;
  }

  speakerFaultCountRight = self->_speakerFaultCountRight;
  if ((speakerFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Speaker Fault with count: %d", speakerFaultCountRight];
    goto LABEL_35;
  }

  frontVentFaultCountLeft = self->_frontVentFaultCountLeft;
  if ((frontVentFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Front Vent Fault with count: %d", frontVentFaultCountLeft];
    goto LABEL_35;
  }

  frontVentFaultCountRight = self->_frontVentFaultCountRight;
  if ((frontVentFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Front Vent Fault with count: %d", frontVentFaultCountRight];
    goto LABEL_35;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  if ((rearVentFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left Rear Vent Fault with count: %d", rearVentFaultCountLeft];
    goto LABEL_35;
  }

  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if ((rearVentFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right Rear Vent Fault with count: %d", rearVentFaultCountRight];
    goto LABEL_35;
  }

  totalHarmonicDistortionFaultCountLeft = self->_totalHarmonicDistortionFaultCountLeft;
  if ((totalHarmonicDistortionFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left THD Fault with count: %d", totalHarmonicDistortionFaultCountLeft];
    goto LABEL_35;
  }

  totalHarmonicDistortionFaultCountRight = self->_totalHarmonicDistortionFaultCountRight;
  if ((totalHarmonicDistortionFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right THD Fault with count: %d", totalHarmonicDistortionFaultCountRight];
    goto LABEL_35;
  }

  freqAccuracyFaultCountLeft = self->_freqAccuracyFaultCountLeft;
  if ((freqAccuracyFaultCountLeft - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Left freq Acc Fault with count: %d", freqAccuracyFaultCountLeft];
    goto LABEL_35;
  }

  freqAccuracyFaultCountRight = self->_freqAccuracyFaultCountRight;
  if ((freqAccuracyFaultCountRight - 1) <= 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Right freq Acc with count: %d", freqAccuracyFaultCountRight];
    goto LABEL_35;
  }

  v19 = 0;
LABEL_36:

  return v19;
}

- (BOOL)hasMeasurementChangedForSide:(id)a3 withRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  version = self->_version;
  if (!version || [(NSNumber *)version intValue]> 2)
  {
    v10 = v6;
    v11 = v10;
    if (v10 == @"left")
    {
      goto LABEL_8;
    }

    if (!v10)
    {
      goto LABEL_22;
    }

    v12 = [(__CFString *)v10 isEqual:@"left"];

    if (v12)
    {
LABEL_8:
      lastMeasurementTimestampLeft = self->_lastMeasurementTimestampLeft;
      v14 = [v7 latestDiagnosticTimestampLeft];
      v15 = lastMeasurementTimestampLeft;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if ((v15 != 0) == (v16 == 0))
        {

          goto LABEL_25;
        }

        v18 = [(NSDate *)v15 isEqual:v16];

        if ((v18 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    v19 = v11;
    if (v19 != @"right")
    {
      v11 = v19;
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = [(__CFString *)v19 isEqual:@"right"];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    lastMeasurementTimestampRight = self->_lastMeasurementTimestampRight;
    v22 = [v7 latestDiagnosticTimestampRight];
    v23 = lastMeasurementTimestampRight;
    v24 = v22;
    v11 = v24;
    if (v23 != v24)
    {
      if ((v23 != 0) != (v24 == 0))
      {
        v25 = [(NSDate *)v23 isEqual:v24];

        if ((v25 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

LABEL_25:
      v26 = 1;
      goto LABEL_26;
    }

LABEL_22:
    goto LABEL_23;
  }

  v9 = [v7 diagnosticMeasurementsCount];

  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_23:
  v26 = 0;
LABEL_26:

  return v26;
}

- (BOOL)isDeviceUsedFor3MonthsOrLess
{
  v3 = [(HMDeviceDiagnosticRecord *)self _isDate:self->_firstTimeUseTimestampLeft lesserThanOrEqualToMonths:3];
  if (v3)
  {
    firstTimeUseTimestampRight = self->_firstTimeUseTimestampRight;

    LOBYTE(v3) = [(HMDeviceDiagnosticRecord *)self _isDate:firstTimeUseTimestampRight lesserThanOrEqualToMonths:3];
  }

  return v3;
}

- (id)measurementInvalidReason
{
  generalSystemStatusLeft = self->_generalSystemStatusLeft;
  if (generalSystemStatusLeft == 4)
  {
    return @"no UTP connection";
  }

  generalSystemStatusRight = self->_generalSystemStatusRight;
  if (generalSystemStatusRight == 4)
  {
    return @"no UTP connection";
  }

  if (generalSystemStatusLeft == 5 || generalSystemStatusRight == 5)
  {
    return @"no data + >1 year out of factory";
  }

  if ([(NSNumber *)self->_version intValue]> 2)
  {
    if (self->_lastMeasurementTimestampLeft && self->_lastMeasurementTimestampRight)
    {
      if ([HMDeviceDiagnosticRecord _isDate:"_isDate:lesserThanOrEqualToMonths:" lesserThanOrEqualToMonths:?])
      {
        if ([(HMDeviceDiagnosticRecord *)self _isDate:self->_lastMeasurementTimestampRight lesserThanOrEqualToMonths:12])
        {
          return 0;
        }

        else
        {
          return @"right measurement older than 1 year";
        }
      }

      else
      {
        return @"left measurement older than 1 year";
      }
    }

    else
    {
      return @"missing measurement timestamp";
    }
  }

  else
  {
    daysSinceLastMeasurementLeft = self->_daysSinceLastMeasurementLeft;
    if (daysSinceLastMeasurementLeft && self->_daysSinceLastMeasurementRight)
    {
      if ([(NSNumber *)daysSinceLastMeasurementLeft intValue]<= 365 && [(NSNumber *)self->_daysSinceLastMeasurementRight intValue]< 366)
      {
        return 0;
      }

      else
      {
        return @"measurement older than 1 year";
      }
    }

    else
    {
      return @"missing days since last measurement";
    }
  }
}

- (void)_prefsLoadOcclusionStats
{
  v34 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = CFPrefs_CopyTypedValue();
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0x277CBE000uLL;
    v7 = *v30;
    v28 = v3;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = *(v6 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          CFStringGetTypeID();
          v11 = CFDictionaryGetTypedValue();
          bluetoothAddress = self->_bluetoothAddress;
          v13 = v11;
          v14 = bluetoothAddress;
          v15 = v14;
          if (v13 != v14)
          {
            if ((v13 != 0) == (v14 == 0))
            {
              v17 = v13;
            }

            else
            {
              v16 = [(NSString *)v13 isEqual:v14];

              if (!v16)
              {
                goto LABEL_25;
              }

LABEL_12:
              self->_hpActiveNotificationCount = CFDictionaryGetInt64Ranged();
              self->_hpPlacardCount = CFDictionaryGetInt64Ranged();
              self->_htCleaningAlertCount = CFDictionaryGetInt64Ranged();
              v17 = objc_alloc_init(MEMORY[0x277CCA968]);
              [(NSString *)v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
              CFStringGetTypeID();
              v15 = CFDictionaryGetTypedValue();
              if (v15)
              {
                v18 = [(NSString *)v17 dateFromString:v15];
                hpActiveNotificationFirstTimestamp = self->_hpActiveNotificationFirstTimestamp;
                self->_hpActiveNotificationFirstTimestamp = v18;
              }

              CFStringGetTypeID();
              v20 = CFDictionaryGetTypedValue();
              if (v20)
              {
                v21 = [(NSString *)v17 dateFromString:v20];
                hpPlacardFirstTimestamp = self->_hpPlacardFirstTimestamp;
                self->_hpPlacardFirstTimestamp = v21;
              }

              CFStringGetTypeID();
              v23 = CFDictionaryGetTypedValue();
              if (v23)
              {
                v24 = [(NSString *)v17 dateFromString:v23];
                htCleaningAlertFirstTimestamp = self->_htCleaningAlertFirstTimestamp;
                self->_htCleaningAlertFirstTimestamp = v24;
              }

              if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
              {
                bluetoothUUID = self->_bluetoothUUID;
                LogPrintF();
              }

              v3 = v28;
            }

            v6 = 0x277CBE000;
LABEL_25:

            continue;
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v5);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_prefsSaveOcclusionStats
{
  v40 = *MEMORY[0x277D85DE8];
  CFArrayGetTypeID();
  v2 = CFPrefs_CopyTypedValue();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableCopy];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  v7 = 0x27F4C5000;
  if (!v6)
  {

    v19 = 0;
    goto LABEL_27;
  }

  v8 = v6;
  v33 = v3;
  v9 = *v36;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v36 != v9)
    {
      objc_enumerationMutation(v5);
    }

    v11 = *(*(&v35 + 1) + 8 * v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_16:
    if (v8 == ++v10)
    {
      v8 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v8)
      {
        goto LABEL_6;
      }

      v19 = 0;
      goto LABEL_25;
    }
  }

  v12 = v5;
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  bluetoothAddress = self->_bluetoothAddress;
  v15 = v13;
  v16 = bluetoothAddress;
  v17 = v16;
  if (v15 != v16)
  {
    if ((v15 != 0) != (v16 == 0))
    {
      v18 = [(NSString *)v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    v5 = v12;
    goto LABEL_16;
  }

LABEL_20:
  v19 = v11;

  v5 = v12;
  if (!v19)
  {
LABEL_25:
    v3 = v33;
    v7 = 0x27F4C5000;
    goto LABEL_27;
  }

  [v12 removeObject:v19];
  v7 = 0x27F4C5000uLL;
  v3 = v33;
  if (gLogCategory_HMDeviceDiagnosticRecord <= 10 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
  {
    bluetoothUUID = self->_bluetoothUUID;
    v32 = v19;
    LogPrintF();
  }

LABEL_27:
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v20 setObject:self->_bluetoothAddress forKeyedSubscript:@"address"];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hpActiveNotificationCount];
  [v20 setObject:v21 forKeyedSubscript:@"HPActiveNotificationCount"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_hpPlacardCount];
  [v20 setObject:v22 forKeyedSubscript:@"HPPlacardCount"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_htCleaningAlertCount];
  [v20 setObject:v23 forKeyedSubscript:@"HTCleaningAlertCount"];

  v24 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v24 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (self->_hpActiveNotificationFirstTimestamp)
  {
    v25 = [v24 stringFromDate:?];
    [v20 setObject:v25 forKeyedSubscript:@"HPActiveNotificationFirstTimestamp"];
  }

  if (self->_hpPlacardFirstTimestamp)
  {
    v26 = [v24 stringFromDate:?];
    [v20 setObject:v26 forKeyedSubscript:@"HPPlacardFirstTimestamp"];
  }

  if (self->_htCleaningAlertFirstTimestamp)
  {
    v27 = [v24 stringFromDate:?];
    [v20 setObject:v27 forKeyedSubscript:@"HTCleaningAlertFirstTimestamp"];
  }

  [v5 addObject:{v20, bluetoothUUID, v32}];
  CFPrefs_SetValue();
  v28 = *(v7 + 3568);
  if (v28 <= 30 && (v28 != -1 || _LogCategory_Initialize()))
  {
    v31 = self->_bluetoothUUID;
    LogPrintF();
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_resetAllOcclusionStats
{
  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:2 type:1];
  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:2 type:7];

  [(HMDeviceDiagnosticRecord *)self _prefsResetOcclusionStatsForFeatureID:3 type:3];
}

- (BOOL)updateFaultCountsFromCloudRecord:(id)a3
{
  v4 = a3;
  if (![(HMDeviceDiagnosticRecord *)self isOcclusionDetectionSupported])
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v5 = [(HMDeviceDiagnosticRecord *)self hasMeasurementChangedForSide:@"left" withRecord:v4];
  if (v5)
  {
    [(HMDeviceDiagnosticRecord *)self _updateLeftSideFaultCountWithCloudRecord:v4];
  }

  if ([(HMDeviceDiagnosticRecord *)self hasMeasurementChangedForSide:@"right" withRecord:v4])
  {
    [(HMDeviceDiagnosticRecord *)self _updateRightSideFaultCountWithCloudRecord:v4];
    v5 = 1;
  }

  v6 = [v4 diagnosticMeasurementsCount];
  self->_diagnosticMeasurementsCount = [v6 unsignedIntValue];

  if (!v5)
  {
    if (gLogCategory_HMDeviceDiagnosticRecord <= 30 && (gLogCategory_HMDeviceDiagnosticRecord != -1 || _LogCategory_Initialize()))
    {
      bluetoothUUID = self->_bluetoothUUID;
      v11 = [v4 latestDiagnosticTimestampLeft];
      v13 = [v4 latestDiagnosticTimestampRight];
      LogPrintF();
    }

    goto LABEL_15;
  }

  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (diagnosticMeasurementsCount + 1 < 3)
  {
    v8 = diagnosticMeasurementsCount + 1;
  }

  else
  {
    v8 = 3;
  }

  self->_diagnosticMeasurementsCount = v8;
  v9 = 1;
LABEL_16:

  return v9;
}

- (void)updateWithANCLossScores:(id)a3
{
  if ([(HMDeviceDiagnosticRecord *)self _isANCScoreSupported])
  {
    if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"left"])
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3.var4];
      ancCleanLossScoreLeft = self->_ancCleanLossScoreLeft;
      self->_ancCleanLossScoreLeft = v5;

      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3.var2];
      ancFullLossScoreLeft = self->_ancFullLossScoreLeft;
      self->_ancFullLossScoreLeft = v7;

      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3.var6];
      ancSevereLossScoreLeft = self->_ancSevereLossScoreLeft;
      self->_ancSevereLossScoreLeft = v9;
    }

    if ([(HMDeviceDiagnosticRecord *)self _hasValidMeasurementForSide:@"right"])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3.var5];
      ancCleanLossScoreRight = self->_ancCleanLossScoreRight;
      self->_ancCleanLossScoreRight = v11;

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:a3.var3];
      ancFullLossScoreRight = self->_ancFullLossScoreRight;
      self->_ancFullLossScoreRight = v13;

      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(*&a3)];
      ancSevereLossScoreRight = self->_ancSevereLossScoreRight;
      self->_ancSevereLossScoreRight = v15;

      MEMORY[0x2821F96F8](v15, ancSevereLossScoreRight);
    }
  }
}

- (int)computeOcclusionResultForHearingTest
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (!diagnosticMeasurementsCount)
  {
    return 0;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = self->_innerMicFaultCountLeft >= v4 || self->_innerMicFaultCountRight >= v4;
  v6 = self->_speakerFaultCountLeft >= v4 || self->_speakerFaultCountRight >= v4;
  v7 = self->_frontVentFaultCountLeft >= v4 || self->_frontVentFaultCountRight >= v4;
  v8 = self->_totalHarmonicDistortionFaultCountLeft >= v4 || self->_totalHarmonicDistortionFaultCountRight >= v4;
  v9 = self->_freqAccuracyFaultCountLeft >= v4 || self->_freqAccuracyFaultCountRight >= v4;
  if (v5 || v6 || v7 || v8 || v9 || (v10.i64[0] = *&self->_topMicFaultCountLeft, v10.i64[1] = *&self->_bottomMicFaultCountLeft, (vmaxv_u16(vmovn_s32(vcgtq_u32(vdupq_n_s32(v4), v10))) & 1) == 0))
  {
    if (diagnosticMeasurementsCount < 3)
    {
      return 1;
    }

    if (!self->_htCleaningAlertCount)
    {
      return 2;
    }

    if (gLogCategory_HMDeviceDiagnosticRecord > 30)
    {
      return 7;
    }

    if (gLogCategory_HMDeviceDiagnosticRecord == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return 7;
      }

      htCleaningAlertCount = self->_htCleaningAlertCount;
    }

    bluetoothUUID = self->_bluetoothUUID;
    LogPrintF();
    return 7;
  }

  rearVentFaultCountLeft = self->_rearVentFaultCountLeft;
  rearVentFaultCountRight = self->_rearVentFaultCountRight;
  if (rearVentFaultCountLeft >= v4 && rearVentFaultCountRight >= v4)
  {
    return 6;
  }

  if (rearVentFaultCountRight >= v4)
  {
    v14 = 5;
  }

  else
  {
    v14 = 3;
  }

  if (rearVentFaultCountLeft >= v4)
  {
    return 4;
  }

  else
  {
    return v14;
  }
}

- (int)computeOcclusionResultForHearingProtection
{
  diagnosticMeasurementsCount = self->_diagnosticMeasurementsCount;
  if (!diagnosticMeasurementsCount)
  {
    return 0;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  v4 = self->_innerMicFaultCountLeft >= v3 || self->_innerMicFaultCountRight >= v3;
  v5 = self->_speakerFaultCountLeft >= v3 || self->_speakerFaultCountRight >= v3;
  v6 = 1;
  if (self->_frontVentFaultCountLeft < v3)
  {
    v6 = self->_frontVentFaultCountRight >= v3;
  }

  if (diagnosticMeasurementsCount < 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v4 || v5 || v6)
  {
    return v7;
  }

  else
  {
    return 3;
  }
}

- (uint64_t)_isDate:(void *)a1 lesserThanOrEqualToMonths:.cold.1(void *a1)
{
  [a1 day];
  [a1 month];
  [a1 year];
  return LogPrintF();
}

- (uint64_t)occlusionIndicationShownForFeatureID:(unsigned int)a3 type:(unsigned int)a4 action:.cold.1(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a2 <= 8)
  {
    v4 = off_2796EE7B0[a2];
  }

  if (a3 <= 3)
  {
    v5 = off_2796EE7F8[a3];
  }

  if (a4 <= 4)
  {
    v6 = off_2796EE818[a4];
  }

  v8 = *(a1 + 232);
  return LogPrintF();
}

- (uint64_t)_prefsResetOcclusionStatsForFeatureID:(int)a3 type:.cold.1(uint64_t a1, uint64_t a2, int a3)
{
  v5 = off_2796EE840[a3 - 1];
  v4 = *(a1 + 232);
  return LogPrintF();
}

@end