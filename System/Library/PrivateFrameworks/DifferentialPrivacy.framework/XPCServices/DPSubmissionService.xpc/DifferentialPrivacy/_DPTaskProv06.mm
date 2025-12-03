@interface _DPTaskProv06
- (BOOL)validatePINEParametersWithError:(id *)error;
- (_DPTaskProv06)initWithDonation:(id)donation leaderURL:(id)l helperURL:(id)rL error:(id *)error;
- (id)encodedDPConfigWithError:(id *)error;
- (id)encodedTaskConfigWithError:(id *)error;
- (id)encodedVDAFConfigWithEncodedDPConfig:(id)config error:(id *)error;
@end

@implementation _DPTaskProv06

- (_DPTaskProv06)initWithDonation:(id)donation leaderURL:(id)l helperURL:(id)rL error:(id *)error
{
  v7.receiver = self;
  v7.super_class = _DPTaskProv06;
  return [(_DPTaskProv *)&v7 initWithDonation:donation leaderURL:l helperURL:rL error:error];
}

- (id)encodedTaskConfigWithError:(id *)error
{
  v5 = [(_DPTaskProv06 *)self encodedDPConfigWithError:?];
  if (v5)
  {
    v6 = [(_DPTaskProv06 *)self encodedVDAFConfigWithEncodedDPConfig:v5 error:error];
    if (v6)
    {
      taskInfo = [(_DPTaskProv *)self taskInfo];
      leaderURL = [(_DPTaskProv *)self leaderURL];
      helperURL = [(_DPTaskProv *)self helperURL];
      minBatchSize = [(_DPTaskProv *)self minBatchSize];
      LODWORD(v13) = [(_DPTaskProv *)self maxBatchSize];
      v10 = [_DPPPM_0_2_1_PayloadEncoderShim encodedTaskConfigWithTaskInfo:taskInfo leaderAggregatorEndpoint:leaderURL helperAggregatorEndpoint:helperURL timePrecision:14400 maxBatchQueryCount:kDPTaskProvMaxBatchQueryCount minBatchSize:minBatchSize maxBatchSize:v13 taskExpiration:[(_DPTaskProv *)self taskExpiration] encodedVDAFConfig:v6 error:error];
      [(_DPTaskProv *)self setEncodedTaskConfig:v10];

      encodedTaskConfig = [(_DPTaskProv *)self encodedTaskConfig];
    }

    else
    {
      encodedTaskConfig = 0;
    }
  }

  else
  {
    encodedTaskConfig = 0;
  }

  return encodedTaskConfig;
}

- (id)encodedDPConfigWithError:(id *)error
{
  donation = [(_DPTaskProv *)self donation];
  metadata = [donation metadata];
  v6 = kDPMetadataDediscoTaskConfig;
  v7 = [metadata objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
  v8 = kDPMetadataDediscoTaskConfigDPConfig;
  v9 = [v7 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfig];

  v10 = kDPMetadataDediscoTaskConfigDPConfigMechanism;
  v11 = [v9 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfigMechanism];
  v12 = v11;
  if (!v11 || [v11 isEqualToString:kDPMetadataDediscoTaskConfigDPConfigMechanismClientSymmetricRAPPOR])
  {
    v13 = kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon;
    v14 = [v9 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = [v9 objectForKeyedSubscript:v13];
      [v16 doubleValue];
      v17 = [_DPPPM_0_2_1_PayloadEncoderShim encodedEpsDPConfigWithEpsilon:error error:?];

      goto LABEL_45;
    }

    v18 = [NSString stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, it should be a number", v6, v8, v13];
    v19 = [_DPDediscoError errorWithCode:400 description:v18];
    goto LABEL_6;
  }

  if ([v12 isEqualToString:kDPMetadataDediscoTaskConfigDPConfigMechanismAggregatorDiscreteGaussianClientSymmetricRAPPOR])
  {
    obj = v6;
    errorCopy = error;
    v118 = v12;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v96 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v99 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v135[0] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v135[1] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v102 = kDPMetadataDediscoTaskConfigDPConfigGaussianSigma;
    v105 = kDPMetadataDPConfigSquaredL2Sensitivity;
    v135[2] = kDPMetadataDediscoTaskConfigDPConfigGaussianSigma;
    v135[3] = kDPMetadataDPConfigSquaredL2Sensitivity;
    v108 = kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon;
    v135[4] = kDPMetadataDediscoTaskConfigDPConfigLocalEpsilon;
    v20 = [NSArray arrayWithObjects:v135 count:5];
    v21 = [v20 countByEnumeratingWithState:&v127 objects:v136 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v128;
      while (2)
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v128 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v127 + 1) + 8 * i);
          v26 = [v9 objectForKeyedSubscript:v25];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          if ((v27 & 1) == 0)
          {
            v67 = [NSString stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", obj, v8, v25];
            v68 = [_DPDediscoError errorWithCode:400 description:v67];

            [v68 logAndStoreInError:errorCopy];
            goto LABEL_43;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v127 objects:v136 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v28 = [v9 objectForKeyedSubscript:v96];
    [v28 doubleValue];
    v30 = v29;
    v31 = [v9 objectForKeyedSubscript:v99];
    [v31 doubleValue];
    v33 = v32;
    v34 = [v9 objectForKeyedSubscript:v102];
    [v34 doubleValue];
    v36 = v35;
    v37 = [v9 objectForKeyedSubscript:v105];
    [v37 doubleValue];
    v39 = v38;
    v40 = [v9 objectForKeyedSubscript:v108];
    [v40 doubleValue];
    v42 = [_DPPPM_0_2_1_PayloadEncoderShim encodedAggregatorDiscreteGaussianClientSymmetricRAPPORDPConfigWithTargetCentralEpsilon:errorCopy targetCentralDelta:v30 sigma:v33 squaredL2Sensitivity:v36 localEpsilon:v39 error:v41];
LABEL_17:
    v17 = v42;

LABEL_44:
    v12 = v118;
    goto LABEL_45;
  }

  if ([v12 isEqualToString:kDPMetadataDediscoTaskConfigDPConfigMechanismGaussianWithSubsampledMomentsAccountant])
  {
    obja = v6;
    errorCopy2 = error;
    v118 = v12;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v91 = kDPMetadataDPConfigMaxCohortSize;
    v93 = kDPMetadataDPConfigNumIterations;
    v133[0] = kDPMetadataDPConfigMaxCohortSize;
    v133[1] = kDPMetadataDPConfigNumIterations;
    v95 = kDPMetadataDPConfigPopulationSize;
    v97 = kDPMetadataDPConfigRenyiOrder;
    v133[2] = kDPMetadataDPConfigPopulationSize;
    v133[3] = kDPMetadataDPConfigRenyiOrder;
    v100 = kDPMetadataDPConfigCohortSigma;
    v103 = kDPMetadataDPConfigSigmaAfterNormalizing;
    v133[4] = kDPMetadataDPConfigCohortSigma;
    v133[5] = kDPMetadataDPConfigSigmaAfterNormalizing;
    v106 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v109 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v133[6] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v133[7] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v43 = [NSArray arrayWithObjects:v133 count:8];
    v44 = [v43 countByEnumeratingWithState:&v123 objects:v134 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v124;
      while (2)
      {
        for (j = 0; j != v45; j = j + 1)
        {
          if (*v124 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v123 + 1) + 8 * j);
          v49 = [v9 objectForKeyedSubscript:v48];
          objc_opt_class();
          v50 = objc_opt_isKindOfClass();

          if ((v50 & 1) == 0)
          {
            v85 = [NSString stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", obja, v8, v48];
            v86 = [_DPDediscoError errorWithCode:400 description:v85];

            [v86 logAndStoreInError:errorCopy2];
            goto LABEL_43;
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v123 objects:v134 count:16];
        if (v45)
        {
          continue;
        }

        break;
      }
    }

    v51 = [v9 objectForKeyedSubscript:v91];
    unsignedLongValue = [v51 unsignedLongValue];
    objc = [v9 objectForKeyedSubscript:v93];
    unsignedIntValue = [objc unsignedIntValue];
    v52 = [v9 objectForKeyedSubscript:v95];
    unsignedLongValue2 = [v52 unsignedLongValue];
    v54 = [v9 objectForKeyedSubscript:v97];
    unsignedIntValue2 = [v54 unsignedIntValue];
    v56 = [v9 objectForKeyedSubscript:v100];
    [v56 doubleValue];
    v58 = v57;
    v59 = [v9 objectForKeyedSubscript:v103];
    [v59 doubleValue];
    v61 = v60;
    v62 = [v9 objectForKeyedSubscript:v106];
    [v62 doubleValue];
    v64 = v63;
    v65 = [v9 objectForKeyedSubscript:v109];
    [v65 doubleValue];
    v17 = [_DPPPM_0_2_1_PayloadEncoderShim encodedGaussianWithSubsampledMomentsAccountantConfigWithMaxCohortSize:unsignedLongValue numIterations:unsignedIntValue populationSize:unsignedLongValue2 renyiOrder:unsignedIntValue2 sigma:errorCopy2 sigmaAfterNormalization:v58 targetCentralEpsilon:v61 targetCentralDelta:v64 error:v66];

    goto LABEL_44;
  }

  if ([v12 isEqualToString:kDPMetadataDediscoTaskConfigDPConfigMechanismDiscreteGaussianWithRandomAllocationAccountant])
  {
    errorCopy3 = error;
    v118 = v12;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v98 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v101 = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v131[0] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralEpsilon;
    v131[1] = kDPMetadataDediscoTaskConfigDPConfigTargetCentralDelta;
    v104 = kDPMetadataDPConfigCohortSigma;
    v107 = kDPMetadataDPConfigPreambleSigmaLocal;
    v131[2] = kDPMetadataDPConfigCohortSigma;
    v131[3] = kDPMetadataDPConfigPreambleSigmaLocal;
    v110 = kDPMetadataDPConfigPreambleScalingFactor;
    v131[4] = kDPMetadataDPConfigPreambleScalingFactor;
    objb = [NSArray arrayWithObjects:v131 count:5];
    v69 = [objb countByEnumeratingWithState:&v119 objects:v132 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v120;
      while (2)
      {
        for (k = 0; k != v70; k = k + 1)
        {
          if (*v120 != v71)
          {
            objc_enumerationMutation(objb);
          }

          v73 = *(*(&v119 + 1) + 8 * k);
          v74 = [v9 objectForKeyedSubscript:v73];
          objc_opt_class();
          v75 = objc_opt_isKindOfClass();

          if ((v75 & 1) == 0)
          {
            v87 = [NSString stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", v6, v8, v73];
            v88 = [_DPDediscoError errorWithCode:400 description:v87];

            [v88 logAndStoreInError:errorCopy3];
LABEL_43:
            v17 = 0;
            goto LABEL_44;
          }
        }

        v70 = [objb countByEnumeratingWithState:&v119 objects:v132 count:16];
        if (v70)
        {
          continue;
        }

        break;
      }
    }

    v28 = [v9 objectForKeyedSubscript:v98];
    [v28 doubleValue];
    v77 = v76;
    v31 = [v9 objectForKeyedSubscript:v101];
    [v31 doubleValue];
    v79 = v78;
    v34 = [v9 objectForKeyedSubscript:v104];
    [v34 doubleValue];
    v81 = v80;
    v37 = [v9 objectForKeyedSubscript:v107];
    [v37 doubleValue];
    v83 = v82;
    v40 = [v9 objectForKeyedSubscript:v110];
    [v40 doubleValue];
    v42 = [_DPPPM_0_2_1_PayloadEncoderShim encodedDistributedDiscreteGaussianWithRandomAllocationAccountantConfigWithTargetCentralEpsilon:errorCopy3 targetCentralDelta:v77 sigma:v79 sigmaLocal:v81 scalingFactor:v83 error:v84];
    goto LABEL_17;
  }

  if (![v12 isEqualToString:kDPMetadataDediscoTaskConfigDPConfigMechanismNone])
  {
    v18 = [v9 objectForKeyedSubscript:v10];
    v90 = [NSString stringWithFormat:@"Unknown DP config mechanism %@", v18];
    v19 = [_DPDediscoError errorWithCode:400 description:v90];

LABEL_6:
    [v19 logAndStoreInError:error];

    v17 = 0;
    goto LABEL_45;
  }

  v17 = [_DPPPM_0_2_1_PayloadEncoderShim encodedNoneDPConfigAndReturnError:error];
LABEL_45:

  return v17;
}

- (BOOL)validatePINEParametersWithError:(id *)error
{
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v44[0] = kDPMetadataPINEL2NormBoundInt;
  v44[1] = kDPMetadataPINEFractionalBitCount;
  v44[2] = kDPMetadataPINEChunkLength;
  v44[3] = kDPMetadataPINEChunkLengthNormEquality;
  obj = [NSArray arrayWithObjects:v44 count:4];
  v3 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    v6 = kDPMetadataVDAF;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        donation = [(_DPTaskProv *)self donation];
        metadata = [donation metadata];
        v11 = [metadata objectForKeyedSubscript:v6];
        v12 = [v11 objectForKeyedSubscript:v8];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          donation2 = [(_DPTaskProv *)self donation];
          metadata2 = [donation2 metadata];
          v26 = [metadata2 objectForKeyedSubscript:v6];
          v27 = [v26 objectForKeyedSubscript:v8];
          [NSString stringWithFormat:@"Invalid VDAF plist parameter (%@) = %@", v8, v27];
          v28 = LABEL_20:;
          v29 = [_DPDediscoError errorWithCode:701 description:v28];

          [v29 logAndStoreInError:error];
          v23 = 0;
          goto LABEL_21;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v42[0] = kDPVDAFNumOfProofs;
  v42[1] = kDPPINEWraparoundCheckCount;
  obj = [NSArray arrayWithObjects:v42 count:2];
  v14 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        donation3 = [(_DPTaskProv *)self donation];
        algorithmParameters = [donation3 algorithmParameters];
        v21 = [algorithmParameters objectForKeyedSubscript:v18];
        objc_opt_class();
        v22 = objc_opt_isKindOfClass();

        if ((v22 & 1) == 0)
        {
          donation2 = [(_DPTaskProv *)self donation];
          metadata2 = [donation2 metadata];
          v26 = [metadata2 objectForKeyedSubscript:kDPMetadataVDAF];
          v27 = [v26 objectForKeyedSubscript:v18];
          [NSString stringWithFormat:@"Invalid VDAF metadata parameter (%@) = %@", v18, v27];
          goto LABEL_20;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      v23 = 1;
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v23 = 1;
  }

LABEL_21:

  return v23;
}

- (id)encodedVDAFConfigWithEncodedDPConfig:(id)config error:(id *)error
{
  configCopy = config;
  donation = [(_DPTaskProv *)self donation];
  dimension = [donation dimension];

  vdafType = [(_DPTaskProv *)self vdafType];
  if (vdafType > -61436)
  {
    switch(vdafType)
    {
      case -61435:
        donation2 = [(_DPTaskProv *)self donation];
        metadata = [donation2 metadata];
        v12 = [metadata objectForKeyedSubscript:kDPMetadataVDAF];

        donation3 = [(_DPTaskProv *)self donation];
        algorithmParameters = [donation3 algorithmParameters];

        if ([(_DPTaskProv06 *)self validatePINEParametersWithError:error])
        {
          v69 = [v12 objectForKeyedSubscript:kDPMetadataPINEL2NormBoundInt];
          unsignedLongLongValue = [v69 unsignedLongLongValue];
          v67 = [v12 objectForKeyedSubscript:kDPMetadataPINEFractionalBitCount];
          unsignedIntValue = [v67 unsignedIntValue];
          v65 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLength];
          unsignedIntValue2 = [v65 unsignedIntValue];
          v15 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLengthNormEquality];
          unsignedIntValue3 = [v15 unsignedIntValue];
          v17 = [algorithmParameters objectForKeyedSubscript:kDPVDAFNumOfProofs];
          unsignedCharValue = [v17 unsignedCharValue];
          [algorithmParameters objectForKeyedSubscript:kDPPINEWraparoundCheckCount];
          v20 = v19 = configCopy;
          LOWORD(v53) = [v20 unsignedCharValue];
          v21 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPINE32VDAFConfigWithL2NormBound:unsignedLongLongValue numFractionalBits:unsignedIntValue length:dimension chunkLength:unsignedIntValue2 chunkLengthNormEquality:unsignedIntValue3 numProofs:unsignedCharValue wraparoundCheckCount:v53 encodedDPConfig:v19 error:error];
          goto LABEL_18;
        }

        break;
      case -61434:
        donation4 = [(_DPTaskProv *)self donation];
        metadata2 = [donation4 metadata];
        v12 = [metadata2 objectForKeyedSubscript:kDPMetadataVDAF];

        donation5 = [(_DPTaskProv *)self donation];
        algorithmParameters = [donation5 algorithmParameters];

        if ([(_DPTaskProv06 *)self validatePINEParametersWithError:error])
        {
          v69 = [v12 objectForKeyedSubscript:kDPMetadataPINEL2NormBoundInt];
          unsignedLongLongValue2 = [v69 unsignedLongLongValue];
          v67 = [v12 objectForKeyedSubscript:kDPMetadataPINEFractionalBitCount];
          unsignedIntValue4 = [v67 unsignedIntValue];
          v65 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLength];
          unsignedIntValue5 = [v65 unsignedIntValue];
          v15 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLengthNormEquality];
          unsignedIntValue6 = [v15 unsignedIntValue];
          v17 = [algorithmParameters objectForKeyedSubscript:kDPVDAFNumOfProofs];
          unsignedCharValue2 = [v17 unsignedCharValue];
          [algorithmParameters objectForKeyedSubscript:kDPPINEWraparoundCheckCount];
          v20 = v19 = configCopy;
          LOWORD(v53) = [v20 unsignedCharValue];
          v21 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPINE40VDAFConfigWithL2NormBound:unsignedLongLongValue2 numFractionalBits:unsignedIntValue4 length:dimension chunkLength:unsignedIntValue5 chunkLengthNormEquality:unsignedIntValue6 numProofs:unsignedCharValue2 wraparoundCheckCount:v53 encodedDPConfig:v19 error:error];
          goto LABEL_18;
        }

        break;
      case -61433:
        donation6 = [(_DPTaskProv *)self donation];
        metadata3 = [donation6 metadata];
        v24 = [metadata3 objectForKeyedSubscript:kDPMetadataDediscoTaskConfig];
        v25 = [v24 objectForKeyedSubscript:kDPMetadataDediscoTaskConfigVDAFConfig];

        v26 = [v25 objectForKeyedSubscript:kDPMetadataVDAFConfigPreambleBlockSize];
        unsignedIntValue7 = [v26 unsignedIntValue];
        v28 = [v25 objectForKeyedSubscript:kDPMetadataVDAFConfigPreambleNumKeptBlocks];
        v29 = +[_DPPPM_0_2_1_PayloadEncoderShim encodedPreambleField32HmacSha256Aes128VDAFConfigWithLength:blockSize:numKeptBlocks:encodedDPConfig:error:](_DPPPM_0_2_1_PayloadEncoderShim, "encodedPreambleField32HmacSha256Aes128VDAFConfigWithLength:blockSize:numKeptBlocks:encodedDPConfig:error:", dimension, unsignedIntValue7, [v28 unsignedIntValue], configCopy, error);

        goto LABEL_21;
      default:
        goto LABEL_14;
    }

LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  if (vdafType == -65536)
  {
    v29 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPrio2VDAFConfigWithLength:dimension encodedDPConfig:configCopy error:error];
    goto LABEL_21;
  }

  if (vdafType == -61437)
  {
    donation7 = [(_DPTaskProv *)self donation];
    algorithmParameters2 = [donation7 algorithmParameters];
    v66 = [algorithmParameters2 objectForKeyedSubscript:kDPVDAFPrio3SumVectorBitWidth];
    errorCopy = error;
    unsignedCharValue3 = [v66 unsignedCharValue];
    [(_DPTaskProv *)self donation];
    v38 = v37 = dimension;
    metadata4 = [v38 metadata];
    v40 = [metadata4 objectForKeyedSubscript:kDPMetadataVDAF];
    v41 = [v40 objectForKeyedSubscript:kDPMetadataVDAFPrio3SumVectorChunkLength];
    unsignedIntValue8 = [v41 unsignedIntValue];
    donation8 = [(_DPTaskProv *)self donation];
    algorithmParameters3 = [donation8 algorithmParameters];
    [algorithmParameters3 objectForKeyedSubscript:kDPVDAFNumOfProofs];
    v46 = v45 = configCopy;
    v29 = +[_DPPPM_0_2_1_PayloadEncoderShim encodedPrio3SumVectorVDAFConfigWithLength:bits:chunkLength:numProofs:encodedDPConfig:error:](_DPPPM_0_2_1_PayloadEncoderShim, "encodedPrio3SumVectorVDAFConfigWithLength:bits:chunkLength:numProofs:encodedDPConfig:error:", v37, unsignedCharValue3, unsignedIntValue8, [v46 unsignedCharValue], v45, errorCopy);

    configCopy = v45;
    goto LABEL_21;
  }

  if (vdafType != -61436)
  {
LABEL_14:
    v35 = [NSString stringWithFormat:@"Unknown VDAFType = %u in TaskProv06.", [(_DPTaskProv *)self vdafType]];
    v36 = [_DPDediscoError errorWithCode:700 description:v35];

    [v36 logAndStoreInError:error];
    v29 = 0;
    goto LABEL_21;
  }

  donation9 = [(_DPTaskProv *)self donation];
  metadata5 = [donation9 metadata];
  v12 = [metadata5 objectForKeyedSubscript:kDPMetadataVDAF];

  donation10 = [(_DPTaskProv *)self donation];
  algorithmParameters = [donation10 algorithmParameters];

  if (![(_DPTaskProv06 *)self validatePINEParametersWithError:error])
  {
    goto LABEL_19;
  }

  v69 = [v12 objectForKeyedSubscript:kDPMetadataPINEL2NormBoundInt];
  unsignedLongLongValue3 = [v69 unsignedLongLongValue];
  v67 = [v12 objectForKeyedSubscript:kDPMetadataPINEFractionalBitCount];
  unsignedIntValue9 = [v67 unsignedIntValue];
  v65 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLength];
  unsignedIntValue10 = [v65 unsignedIntValue];
  v15 = [v12 objectForKeyedSubscript:kDPMetadataPINEChunkLengthNormEquality];
  unsignedIntValue11 = [v15 unsignedIntValue];
  v17 = [algorithmParameters objectForKeyedSubscript:kDPVDAFNumOfProofs];
  unsignedCharValue4 = [v17 unsignedCharValue];
  [algorithmParameters objectForKeyedSubscript:kDPPINEWraparoundCheckCount];
  v20 = v19 = configCopy;
  LOWORD(v53) = [v20 unsignedCharValue];
  v21 = [_DPPPM_0_2_1_PayloadEncoderShim encodedPINE64VDAFConfigWithL2NormBound:unsignedLongLongValue3 numFractionalBits:unsignedIntValue9 length:dimension chunkLength:unsignedIntValue10 chunkLengthNormEquality:unsignedIntValue11 numProofs:unsignedCharValue4 wraparoundCheckCount:v53 encodedDPConfig:v19 error:error];
LABEL_18:
  v29 = v21;

  configCopy = v19;
LABEL_20:

LABEL_21:

  return v29;
}

@end