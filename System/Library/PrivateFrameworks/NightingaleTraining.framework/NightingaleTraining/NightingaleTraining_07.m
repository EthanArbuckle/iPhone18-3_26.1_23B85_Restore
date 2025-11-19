NightingaleTraining::NightingalePFLTaskType_optional __swiftcall NightingalePFLTaskType.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 6;
}

uint64_t NightingalePFLTaskType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 5;
}

NightingaleTraining::NightingalePFLModelType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingalePFLModelType@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NightingalePFLModelType_optional *a2@<X8>)
{
  result.value = NightingalePFLModelType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingalePFLModelType@<X0>(uint64_t *a1@<X8>)
{
  result = NightingalePFLModelType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType()
{
  v2 = lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType;
  if (!lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType;
  if (!lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingaleModelFeatureType and conformance NightingaleModelFeatureType);
    return WitnessTable;
  }

  return v2;
}

NightingaleTraining::NightingaleModelFeatureType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingaleModelFeatureType@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NightingaleModelFeatureType_optional *a2@<X8>)
{
  result.value = NightingaleModelFeatureType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingaleModelFeatureType@<X0>(uint64_t *a1@<X8>)
{
  result = NightingaleModelFeatureType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::NightingalePFLTaskType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NightingalePFLTaskType@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NightingalePFLTaskType_optional *a2@<X8>)
{
  result.value = NightingalePFLTaskType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NightingalePFLTaskType@<X0>(uint64_t *a1@<X8>)
{
  result = NightingalePFLTaskType.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NightingalePFLModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NightingalePFLModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

__int128 *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputDaySHR10 != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputDaySHR10;
}

__int128 *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputNightSHR10 != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputNightSHR10;
}

__int128 *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputPeriodStartMean != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputPeriodStartMean;
}

__int128 *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputPeriodStartStd != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputPeriodStartStd;
}

__int128 *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputAppleSleepingWristTemperature != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputAppleSleepingWristTemperature;
}

__int128 *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputDaysSinceLMS != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputDaysSinceLMS;
}

__int128 *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputHRV != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputHRV;
}

__int128 *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputRespiratoryRate != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputRespiratoryRate;
}

__int128 *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor()
{
  if (one-time initialization token for nightingaleDInputSpO2 != -1)
  {
    swift_once();
  }

  return &static HyperParams.nightingaleDInputSpO2;
}

__int128 *HyperParams.modelRepresentationEIR.unsafeMutableAddressor()
{
  if (one-time initialization token for modelRepresentationEIR != -1)
  {
    swift_once();
  }

  return &static HyperParams.modelRepresentationEIR;
}

__int128 *HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor()
{
  if (one-time initialization token for labelEncodingTypeRegression != -1)
  {
    swift_once();
  }

  return &static HyperParams.labelEncodingTypeRegression;
}

__int128 *HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor()
{
  if (one-time initialization token for labelEncodingTypeOnehot != -1)
  {
    swift_once();
  }

  return &static HyperParams.labelEncodingTypeOnehot;
}

__int128 *HyperParams.keyLSTMModelType.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLSTMModelType != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLSTMModelType;
}

__int128 *HyperParams.keyIterationStartTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyIterationStartTime != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyIterationStartTime;
}

uint64_t one-time initialization function for keyLSTMModelType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LSTMModelType", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLSTMModelType = v1;
  return result;
}

uint64_t static HyperParams.keyLSTMModelType.getter()
{
  v1 = *HyperParams.keyLSTMModelType.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaximumDays()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaximumDays", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaximumDays = v1;
  return result;
}

__int128 *HyperParams.keyMaximumDays.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaximumDays != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaximumDays;
}

uint64_t static HyperParams.keyMaximumDays.getter()
{
  v1 = *HyperParams.keyMaximumDays.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keySHRQueryBatchSize()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRQueryBatchSize", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keySHRQueryBatchSize = v1;
  return result;
}

__int128 *HyperParams.keySHRQueryBatchSize.unsafeMutableAddressor()
{
  if (one-time initialization token for keySHRQueryBatchSize != -1)
  {
    swift_once();
  }

  return &static HyperParams.keySHRQueryBatchSize;
}

uint64_t static HyperParams.keySHRQueryBatchSize.getter()
{
  v1 = *HyperParams.keySHRQueryBatchSize.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keySliceSize()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SliceSize", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keySliceSize = v1;
  return result;
}

__int128 *HyperParams.keySliceSize.unsafeMutableAddressor()
{
  if (one-time initialization token for keySliceSize != -1)
  {
    swift_once();
  }

  return &static HyperParams.keySliceSize;
}

uint64_t static HyperParams.keySliceSize.getter()
{
  v1 = *HyperParams.keySliceSize.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyRawSampleTimeout()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSampleTimeout", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyRawSampleTimeout = v1;
  return result;
}

__int128 *HyperParams.keyRawSampleTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for keyRawSampleTimeout != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyRawSampleTimeout;
}

uint64_t static HyperParams.keyRawSampleTimeout.getter()
{
  v1 = *HyperParams.keyRawSampleTimeout.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keySHRTimeout()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRTimeout", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keySHRTimeout = v1;
  return result;
}

__int128 *HyperParams.keySHRTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for keySHRTimeout != -1)
  {
    swift_once();
  }

  return &static HyperParams.keySHRTimeout;
}

uint64_t static HyperParams.keySHRTimeout.getter()
{
  v1 = *HyperParams.keySHRTimeout.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyBMITimeout()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMITimeout", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyBMITimeout = v1;
  return result;
}

__int128 *HyperParams.keyBMITimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for keyBMITimeout != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyBMITimeout;
}

uint64_t static HyperParams.keyBMITimeout.getter()
{
  v1 = *HyperParams.keyBMITimeout.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLabelSize()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LabelSize", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLabelSize = v1;
  return result;
}

__int128 *HyperParams.keyLabelSize.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLabelSize != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLabelSize;
}

uint64_t static HyperParams.keyLabelSize.getter()
{
  v1 = *HyperParams.keyLabelSize.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxNumDaysToNextPeriod()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxNumDaysToNextPeriod", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxNumDaysToNextPeriod = v1;
  return result;
}

__int128 *HyperParams.keyMaxNumDaysToNextPeriod.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxNumDaysToNextPeriod != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxNumDaysToNextPeriod;
}

uint64_t static HyperParams.keyMaxNumDaysToNextPeriod.getter()
{
  v1 = *HyperParams.keyMaxNumDaysToNextPeriod.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelRepresentation()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelRepresentation", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelRepresentation = v1;
  return result;
}

__int128 *HyperParams.keyModelRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelRepresentation != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelRepresentation;
}

uint64_t static HyperParams.keyModelRepresentation.getter()
{
  v1 = *HyperParams.keyModelRepresentation.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyBatchSize()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("batchSize", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyBatchSize = v1;
  return result;
}

__int128 *HyperParams.keyBatchSize.unsafeMutableAddressor()
{
  if (one-time initialization token for keyBatchSize != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyBatchSize;
}

uint64_t static HyperParams.keyBatchSize.getter()
{
  v1 = *HyperParams.keyBatchSize.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelName", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelName = v1;
  return result;
}

__int128 *HyperParams.keyModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelName;
}

uint64_t static HyperParams.keyModelName.getter()
{
  v1 = *HyperParams.keyModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLearningRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LearningRate", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLearningRate = v1;
  return result;
}

__int128 *HyperParams.keyLearningRate.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLearningRate != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLearningRate;
}

uint64_t static HyperParams.keyLearningRate.getter()
{
  v1 = *HyperParams.keyLearningRate.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNumSlice()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNumSlice", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNumSlice = v1;
  return result;
}

__int128 *HyperParams.keyMinNumSlice.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNumSlice != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNumSlice;
}

uint64_t static HyperParams.keyMinNumSlice.getter()
{
  v1 = *HyperParams.keyMinNumSlice.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxNumSlice()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxNumSlice", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxNumSlice = v1;
  return result;
}

__int128 *HyperParams.keyMaxNumSlice.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxNumSlice != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxNumSlice;
}

uint64_t static HyperParams.keyMaxNumSlice.getter()
{
  v1 = *HyperParams.keyMaxNumSlice.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelInputName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelInputName", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelInputName = v1;
  return result;
}

__int128 *HyperParams.keyModelInputName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelInputName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelInputName;
}

uint64_t static HyperParams.keyModelInputName.getter()
{
  v1 = *HyperParams.keyModelInputName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelLabelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelLabelName", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelLabelName = v1;
  return result;
}

__int128 *HyperParams.keyModelLabelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelLabelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelLabelName;
}

uint64_t static HyperParams.keyModelLabelName.getter()
{
  v1 = *HyperParams.keyModelLabelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelLossName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelLossName", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelLossName = v1;
  return result;
}

__int128 *HyperParams.keyModelLossName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelLossName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelLossName;
}

uint64_t static HyperParams.keyModelLossName.getter()
{
  v1 = *HyperParams.keyModelLossName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelOutputName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelOutputName", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelOutputName = v1;
  return result;
}

__int128 *HyperParams.keyModelOutputName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelOutputName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelOutputName;
}

uint64_t static HyperParams.keyModelOutputName.getter()
{
  v1 = *HyperParams.keyModelOutputName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelOrderedWeightNames()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelOrderedWeightNames", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelOrderedWeightNames = v1;
  return result;
}

__int128 *HyperParams.keyModelOrderedWeightNames.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelOrderedWeightNames != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelOrderedWeightNames;
}

uint64_t static HyperParams.keyModelOrderedWeightNames.getter()
{
  v1 = *HyperParams.keyModelOrderedWeightNames.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelLabelEncodingType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelLabelEncodingType", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelLabelEncodingType = v1;
  return result;
}

__int128 *HyperParams.keyModelLabelEncodingType.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelLabelEncodingType != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelLabelEncodingType;
}

uint64_t static HyperParams.keyModelLabelEncodingType.getter()
{
  v1 = *HyperParams.keyModelLabelEncodingType.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyReportLastReachLocation()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReportLastReachLocation", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyReportLastReachLocation = v1;
  return result;
}

__int128 *HyperParams.keyReportLastReachLocation.unsafeMutableAddressor()
{
  if (one-time initialization token for keyReportLastReachLocation != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyReportLastReachLocation;
}

uint64_t static HyperParams.keyReportLastReachLocation.getter()
{
  v1 = *HyperParams.keyReportLastReachLocation.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyPFLTaskType()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PFLTaskType", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyPFLTaskType = v1;
  return result;
}

__int128 *HyperParams.keyPFLTaskType.unsafeMutableAddressor()
{
  if (one-time initialization token for keyPFLTaskType != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyPFLTaskType;
}

uint64_t static HyperParams.keyPFLTaskType.getter()
{
  v1 = *HyperParams.keyPFLTaskType.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyDefaultBMI()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DefaultBMI", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyDefaultBMI = v1;
  return result;
}

__int128 *HyperParams.keyDefaultBMI.unsafeMutableAddressor()
{
  if (one-time initialization token for keyDefaultBMI != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyDefaultBMI;
}

uint64_t static HyperParams.keyDefaultBMI.getter()
{
  v1 = *HyperParams.keyDefaultBMI.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyDefaultAge()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DefaultAge", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyDefaultAge = v1;
  return result;
}

__int128 *HyperParams.keyDefaultAge.unsafeMutableAddressor()
{
  if (one-time initialization token for keyDefaultAge != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyDefaultAge;
}

uint64_t static HyperParams.keyDefaultAge.getter()
{
  v1 = *HyperParams.keyDefaultAge.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNumOfDaySHRPerSlice()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNumOfDaySHRPerSlice", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNumOfDaySHRPerSlice = v1;
  return result;
}

__int128 *HyperParams.keyMinNumOfDaySHRPerSlice.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNumOfDaySHRPerSlice != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNumOfDaySHRPerSlice;
}

uint64_t static HyperParams.keyMinNumOfDaySHRPerSlice.getter()
{
  v1 = *HyperParams.keyMinNumOfDaySHRPerSlice.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyNumLocalIterations()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NumLocalIterations", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyNumLocalIterations = v1;
  return result;
}

__int128 *HyperParams.keyNumLocalIterations.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNumLocalIterations != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyNumLocalIterations;
}

uint64_t static HyperParams.keyNumLocalIterations.getter()
{
  v1 = *HyperParams.keyNumLocalIterations.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyBirthDateRequired()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BirthDateRequired", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyBirthDateRequired = v1;
  return result;
}

__int128 *HyperParams.keyBirthDateRequired.unsafeMutableAddressor()
{
  if (one-time initialization token for keyBirthDateRequired != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyBirthDateRequired;
}

uint64_t static HyperParams.keyBirthDateRequired.getter()
{
  v1 = *HyperParams.keyBirthDateRequired.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyInputShuffleMethod()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InputShuffleMethod", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyInputShuffleMethod = v1;
  return result;
}

__int128 *HyperParams.keyInputShuffleMethod.unsafeMutableAddressor()
{
  if (one-time initialization token for keyInputShuffleMethod != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyInputShuffleMethod;
}

uint64_t static HyperParams.keyInputShuffleMethod.getter()
{
  v1 = *HyperParams.keyInputShuffleMethod.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyFullBatchTraining()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FullBatchTraining", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyFullBatchTraining = v1;
  return result;
}

__int128 *HyperParams.keyFullBatchTraining.unsafeMutableAddressor()
{
  if (one-time initialization token for keyFullBatchTraining != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyFullBatchTraining;
}

uint64_t static HyperParams.keyFullBatchTraining.getter()
{
  v1 = *HyperParams.keyFullBatchTraining.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyEvalBeforeTrain()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EvalBeforeTrain", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyEvalBeforeTrain = v1;
  return result;
}

__int128 *HyperParams.keyEvalBeforeTrain.unsafeMutableAddressor()
{
  if (one-time initialization token for keyEvalBeforeTrain != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyEvalBeforeTrain;
}

uint64_t static HyperParams.keyEvalBeforeTrain.getter()
{
  v1 = *HyperParams.keyEvalBeforeTrain.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyCollectL2Norm()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CollectL2Norm", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyCollectL2Norm = v1;
  return result;
}

__int128 *HyperParams.keyCollectL2Norm.unsafeMutableAddressor()
{
  if (one-time initialization token for keyCollectL2Norm != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyCollectL2Norm;
}

uint64_t static HyperParams.keyCollectL2Norm.getter()
{
  v1 = *HyperParams.keyCollectL2Norm.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelMaxNumDaysToNextPeriod()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelMaxNumDaysToNextPeriod", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelMaxNumDaysToNextPeriod = v1;
  return result;
}

__int128 *HyperParams.keyModelMaxNumDaysToNextPeriod.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelMaxNumDaysToNextPeriod != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelMaxNumDaysToNextPeriod;
}

uint64_t static HyperParams.keyModelMaxNumDaysToNextPeriod.getter()
{
  v1 = *HyperParams.keyModelMaxNumDaysToNextPeriod.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinCycleLenStd()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinCycleLenStd", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinCycleLenStd = v1;
  return result;
}

__int128 *HyperParams.keyMinCycleLenStd.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinCycleLenStd != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinCycleLenStd;
}

uint64_t static HyperParams.keyMinCycleLenStd.getter()
{
  v1 = *HyperParams.keyMinCycleLenStd.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxCycleLenStd()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxCycleLenStd", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxCycleLenStd = v1;
  return result;
}

__int128 *HyperParams.keyMaxCycleLenStd.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxCycleLenStd != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxCycleLenStd;
}

uint64_t static HyperParams.keyMaxCycleLenStd.getter()
{
  v1 = *HyperParams.keyMaxCycleLenStd.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyEvalModels()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EvalModels", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyEvalModels = v1;
  return result;
}

__int128 *HyperParams.keyEvalModels.unsafeMutableAddressor()
{
  if (one-time initialization token for keyEvalModels != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyEvalModels;
}

uint64_t static HyperParams.keyEvalModels.getter()
{
  v1 = *HyperParams.keyEvalModels.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNumDaysToNextPeriod()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNumDaysToNextPeriod", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNumDaysToNextPeriod = v1;
  return result;
}

__int128 *HyperParams.keyMinNumDaysToNextPeriod.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNumDaysToNextPeriod != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNumDaysToNextPeriod;
}

uint64_t static HyperParams.keyMinNumDaysToNextPeriod.getter()
{
  v1 = *HyperParams.keyMinNumDaysToNextPeriod.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelPath()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelPath", 9uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelPath = v1;
  return result;
}

__int128 *HyperParams.keyModelPath.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelPath != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelPath;
}

uint64_t static HyperParams.keyModelPath.getter()
{
  v1 = *HyperParams.keyModelPath.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyIterationStartTime()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IterationStartTime", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyIterationStartTime = v1;
  return result;
}

uint64_t static HyperParams.keyIterationStartTime.getter()
{
  v1 = *HyperParams.keyIterationStartTime.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyIntervalCorrectionFactor()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IntervalCorrectionFactor", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyIntervalCorrectionFactor = v1;
  return result;
}

__int128 *HyperParams.keyIntervalCorrectionFactor.unsafeMutableAddressor()
{
  if (one-time initialization token for keyIntervalCorrectionFactor != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyIntervalCorrectionFactor;
}

uint64_t static HyperParams.keyIntervalCorrectionFactor.getter()
{
  v1 = *HyperParams.keyIntervalCorrectionFactor.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinDaysAgo()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinDaysAgo", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinDaysAgo = v1;
  return result;
}

__int128 *HyperParams.keyMinDaysAgo.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinDaysAgo != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinDaysAgo;
}

uint64_t static HyperParams.keyMinDaysAgo.getter()
{
  v1 = *HyperParams.keyMinDaysAgo.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNEligibleCyclesHistory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNEligibleCyclesHistory", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNEligibleCyclesHistory = v1;
  return result;
}

__int128 *HyperParams.keyMinNEligibleCyclesHistory.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNEligibleCyclesHistory != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNEligibleCyclesHistory;
}

uint64_t static HyperParams.keyMinNEligibleCyclesHistory.getter()
{
  v1 = *HyperParams.keyMinNEligibleCyclesHistory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxNEligibleCyclesHistory()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxNEligibleCyclesHistory", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxNEligibleCyclesHistory = v1;
  return result;
}

__int128 *HyperParams.keyMaxNEligibleCyclesHistory.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxNEligibleCyclesHistory != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxNEligibleCyclesHistory;
}

uint64_t static HyperParams.keyMaxNEligibleCyclesHistory.getter()
{
  v1 = *HyperParams.keyMaxNEligibleCyclesHistory.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinDaySHRCountThreshold()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinDaySHRCountThreshold", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinDaySHRCountThreshold = v1;
  return result;
}

__int128 *HyperParams.keyMinDaySHRCountThreshold.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinDaySHRCountThreshold != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinDaySHRCountThreshold;
}

uint64_t static HyperParams.keyMinDaySHRCountThreshold.getter()
{
  v1 = *HyperParams.keyMinDaySHRCountThreshold.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNightSHRCountThreshold()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNightSHRCountThreshold", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNightSHRCountThreshold = v1;
  return result;
}

__int128 *HyperParams.keyMinNightSHRCountThreshold.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNightSHRCountThreshold != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNightSHRCountThreshold;
}

uint64_t static HyperParams.keyMinNightSHRCountThreshold.getter()
{
  v1 = *HyperParams.keyMinNightSHRCountThreshold.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyHeartRateFwEnd10PctModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeartRateFwEnd10PctModelName", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyHeartRateFwEnd10PctModelName = v1;
  return result;
}

__int128 *HyperParams.keyHeartRateFwEnd10PctModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyHeartRateFwEnd10PctModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyHeartRateFwEnd10PctModelName;
}

uint64_t static HyperParams.keyHeartRateFwEnd10PctModelName.getter()
{
  v1 = *HyperParams.keyHeartRateFwEnd10PctModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyHeartRatePeriod10PctModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeartRatePeriod10PctModelName", 0x1DuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyHeartRatePeriod10PctModelName = v1;
  return result;
}

__int128 *HyperParams.keyHeartRatePeriod10PctModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyHeartRatePeriod10PctModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyHeartRatePeriod10PctModelName;
}

uint64_t static HyperParams.keyHeartRatePeriod10PctModelName.getter()
{
  v1 = *HyperParams.keyHeartRatePeriod10PctModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyWTmpFwEndLstmModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WTmpFwEndLstmModelName", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyWTmpFwEndLstmModelName = v1;
  return result;
}

__int128 *HyperParams.keyWTmpFwEndLstmModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyWTmpFwEndLstmModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyWTmpFwEndLstmModelName;
}

uint64_t static HyperParams.keyWTmpFwEndLstmModelName.getter()
{
  v1 = *HyperParams.keyWTmpFwEndLstmModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyWTmpFwEndRFModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WTmpFwEndRFModelName", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyWTmpFwEndRFModelName = v1;
  return result;
}

__int128 *HyperParams.keyWTmpFwEndRFModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyWTmpFwEndRFModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyWTmpFwEndRFModelName;
}

uint64_t static HyperParams.keyWTmpFwEndRFModelName.getter()
{
  v1 = *HyperParams.keyWTmpFwEndRFModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyWTmpPeriodLstmModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("WTmpPeriodLstmModelName", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyWTmpPeriodLstmModelName = v1;
  return result;
}

__int128 *HyperParams.keyWTmpPeriodLstmModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyWTmpPeriodLstmModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyWTmpPeriodLstmModelName;
}

uint64_t static HyperParams.keyWTmpPeriodLstmModelName.getter()
{
  v1 = *HyperParams.keyWTmpPeriodLstmModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyHeartRatePeriodTFModelNames()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeartRatePeriodTFModelNames", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyHeartRatePeriodTFModelNames = v1;
  return result;
}

__int128 *HyperParams.keyHeartRatePeriodTFModelNames.unsafeMutableAddressor()
{
  if (one-time initialization token for keyHeartRatePeriodTFModelNames != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyHeartRatePeriodTFModelNames;
}

uint64_t static HyperParams.keyHeartRatePeriodTFModelNames.getter()
{
  v1 = *HyperParams.keyHeartRatePeriodTFModelNames.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyHeartRatePeriodEnsembleModelNames()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HeartRatePeriodEnsembleModelNames", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyHeartRatePeriodEnsembleModelNames = v1;
  return result;
}

__int128 *HyperParams.keyHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor()
{
  if (one-time initialization token for keyHeartRatePeriodEnsembleModelNames != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyHeartRatePeriodEnsembleModelNames;
}

uint64_t static HyperParams.keyHeartRatePeriodEnsembleModelNames.getter()
{
  v1 = *HyperParams.keyHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyRecipeId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RecipeId", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyRecipeId = v1;
  return result;
}

__int128 *HyperParams.keyRecipeId.unsafeMutableAddressor()
{
  if (one-time initialization token for keyRecipeId != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyRecipeId;
}

uint64_t static HyperParams.keyRecipeId.getter()
{
  v1 = *HyperParams.keyRecipeId.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyUseCachedDayStreamProcessorConfig()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UseCachedDayStreamProcessorConfig", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyUseCachedDayStreamProcessorConfig = v1;
  return result;
}

__int128 *HyperParams.keyUseCachedDayStreamProcessorConfig.unsafeMutableAddressor()
{
  if (one-time initialization token for keyUseCachedDayStreamProcessorConfig != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyUseCachedDayStreamProcessorConfig;
}

uint64_t static HyperParams.keyUseCachedDayStreamProcessorConfig.getter()
{
  v1 = *HyperParams.keyUseCachedDayStreamProcessorConfig.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keySensorTimeout()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SensorTimeout", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keySensorTimeout = v1;
  return result;
}

__int128 *HyperParams.keySensorTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for keySensorTimeout != -1)
  {
    swift_once();
  }

  return &static HyperParams.keySensorTimeout;
}

uint64_t static HyperParams.keySensorTimeout.getter()
{
  v1 = *HyperParams.keySensorTimeout.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyPregnancySourceList()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PregnancySourceList", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyPregnancySourceList = v1;
  return result;
}

__int128 *HyperParams.keyPregnancySourceList.unsafeMutableAddressor()
{
  if (one-time initialization token for keyPregnancySourceList != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyPregnancySourceList;
}

uint64_t static HyperParams.keyPregnancySourceList.getter()
{
  v1 = *HyperParams.keyPregnancySourceList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyHKPregnancyStartSourceIncludeList()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("HKPregnancyStartSourceIncludeList", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyHKPregnancyStartSourceIncludeList = v1;
  return result;
}

__int128 *HyperParams.keyHKPregnancyStartSourceIncludeList.unsafeMutableAddressor()
{
  if (one-time initialization token for keyHKPregnancyStartSourceIncludeList != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyHKPregnancyStartSourceIncludeList;
}

uint64_t static HyperParams.keyHKPregnancyStartSourceIncludeList.getter()
{
  v1 = *HyperParams.keyHKPregnancyStartSourceIncludeList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLMPMaxRange()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMPMaxRange", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLMPMaxRange = v1;
  return result;
}

__int128 *HyperParams.keyLMPMaxRange.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLMPMaxRange != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLMPMaxRange;
}

uint64_t static HyperParams.keyLMPMaxRange.getter()
{
  v1 = *HyperParams.keyLMPMaxRange.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyNightingaleDInputFeatureList()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NightingaleDInputFeatureList", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyNightingaleDInputFeatureList = v1;
  return result;
}

__int128 *HyperParams.keyNightingaleDInputFeatureList.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNightingaleDInputFeatureList != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyNightingaleDInputFeatureList;
}

uint64_t static HyperParams.keyNightingaleDInputFeatureList.getter()
{
  v1 = *HyperParams.keyNightingaleDInputFeatureList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyNightingaleDInputFeatureStatsOption()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("NightingaleDInputFeatureStatsOption", 0x23uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyNightingaleDInputFeatureStatsOption = v1;
  return result;
}

__int128 *HyperParams.keyNightingaleDInputFeatureStatsOption.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNightingaleDInputFeatureStatsOption != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyNightingaleDInputFeatureStatsOption;
}

uint64_t static HyperParams.keyNightingaleDInputFeatureStatsOption.getter()
{
  v1 = *HyperParams.keyNightingaleDInputFeatureStatsOption.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinPregnancyDuration()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinPregnancyDuration", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinPregnancyDuration = v1;
  return result;
}

__int128 *HyperParams.keyMinPregnancyDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinPregnancyDuration != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinPregnancyDuration;
}

uint64_t static HyperParams.keyMinPregnancyDuration.getter()
{
  v1 = *HyperParams.keyMinPregnancyDuration.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxPregnancyDuration()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxPregnancyDuration", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxPregnancyDuration = v1;
  return result;
}

__int128 *HyperParams.keyMaxPregnancyDuration.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxPregnancyDuration != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxPregnancyDuration;
}

uint64_t static HyperParams.keyMaxPregnancyDuration.getter()
{
  v1 = *HyperParams.keyMaxPregnancyDuration.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyOverlapPregnanciesStrategy()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OverlapPregnanciesStrategy", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyOverlapPregnanciesStrategy = v1;
  return result;
}

__int128 *HyperParams.keyOverlapPregnanciesStrategy.unsafeMutableAddressor()
{
  if (one-time initialization token for keyOverlapPregnanciesStrategy != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyOverlapPregnanciesStrategy;
}

uint64_t static HyperParams.keyOverlapPregnanciesStrategy.getter()
{
  v1 = *HyperParams.keyOverlapPregnanciesStrategy.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyExcludeContraceptionSlices()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludeContraceptionSlices", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyExcludeContraceptionSlices = v1;
  return result;
}

__int128 *HyperParams.keyExcludeContraceptionSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyExcludeContraceptionSlices != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyExcludeContraceptionSlices;
}

uint64_t static HyperParams.keyExcludeContraceptionSlices.getter()
{
  v1 = *HyperParams.keyExcludeContraceptionSlices.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyExcludeOtherPregnancySlices()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludeOtherPregnancySlices", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyExcludeOtherPregnancySlices = v1;
  return result;
}

__int128 *HyperParams.keyExcludeOtherPregnancySlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyExcludeOtherPregnancySlices != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyExcludeOtherPregnancySlices;
}

uint64_t static HyperParams.keyExcludeOtherPregnancySlices.getter()
{
  v1 = *HyperParams.keyExcludeOtherPregnancySlices.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyExcludeLactationSlices()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludeLactationSlices", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyExcludeLactationSlices = v1;
  return result;
}

__int128 *HyperParams.keyExcludeLactationSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyExcludeLactationSlices != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyExcludeLactationSlices;
}

uint64_t static HyperParams.keyExcludeLactationSlices.getter()
{
  v1 = *HyperParams.keyExcludeLactationSlices.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinLMPFactorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinLMPFactorDelta", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinLMPFactorDelta = v1;
  return result;
}

__int128 *HyperParams.keyMinLMPFactorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinLMPFactorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinLMPFactorDelta;
}

uint64_t static HyperParams.keyMinLMPFactorDelta.getter()
{
  v1 = *HyperParams.keyMinLMPFactorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxLMPFactorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxLMPFactorDelta", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxLMPFactorDelta = v1;
  return result;
}

__int128 *HyperParams.keyMaxLMPFactorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxLMPFactorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxLMPFactorDelta;
}

uint64_t static HyperParams.keyMaxLMPFactorDelta.getter()
{
  v1 = *HyperParams.keyMaxLMPFactorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinLMPTestDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinLMPTestDelta", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinLMPTestDelta = v1;
  return result;
}

__int128 *HyperParams.keyMinLMPTestDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinLMPTestDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinLMPTestDelta;
}

uint64_t static HyperParams.keyMinLMPTestDelta.getter()
{
  v1 = *HyperParams.keyMinLMPTestDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxLMPTestDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxLMPTestDelta", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxLMPTestDelta = v1;
  return result;
}

__int128 *HyperParams.keyMaxLMPTestDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxLMPTestDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxLMPTestDelta;
}

uint64_t static HyperParams.keyMaxLMPTestDelta.getter()
{
  v1 = *HyperParams.keyMaxLMPTestDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyUseSeahorseInferredStartdate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UseSeahorseInferredStartdate", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyUseSeahorseInferredStartdate = v1;
  return result;
}

__int128 *HyperParams.keyUseSeahorseInferredStartdate.unsafeMutableAddressor()
{
  if (one-time initialization token for keyUseSeahorseInferredStartdate != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyUseSeahorseInferredStartdate;
}

uint64_t static HyperParams.keyUseSeahorseInferredStartdate.getter()
{
  v1 = *HyperParams.keyUseSeahorseInferredStartdate.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyExcludePregnanciesContainingFlow()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ExcludePregnanciesContainingFlow", 0x20uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyExcludePregnanciesContainingFlow = v1;
  return result;
}

__int128 *HyperParams.keyExcludePregnanciesContainingFlow.unsafeMutableAddressor()
{
  if (one-time initialization token for keyExcludePregnanciesContainingFlow != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyExcludePregnanciesContainingFlow;
}

uint64_t static HyperParams.keyExcludePregnanciesContainingFlow.getter()
{
  v1 = *HyperParams.keyExcludePregnanciesContainingFlow.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxLMPTolerableFlowDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxLMPTolerableFlowDelta", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxLMPTolerableFlowDelta = v1;
  return result;
}

__int128 *HyperParams.keyMaxLMPTolerableFlowDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxLMPTolerableFlowDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxLMPTolerableFlowDelta;
}

uint64_t static HyperParams.keyMaxLMPTolerableFlowDelta.getter()
{
  v1 = *HyperParams.keyMaxLMPTolerableFlowDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keySliceDeltaAnchor()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SliceDeltaAnchor", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keySliceDeltaAnchor = v1;
  return result;
}

__int128 *HyperParams.keySliceDeltaAnchor.unsafeMutableAddressor()
{
  if (one-time initialization token for keySliceDeltaAnchor != -1)
  {
    swift_once();
  }

  return &static HyperParams.keySliceDeltaAnchor;
}

uint64_t static HyperParams.keySliceDeltaAnchor.getter()
{
  v1 = *HyperParams.keySliceDeltaAnchor.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyOVUFallbackToLMP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OVUFallbackToLMP", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyOVUFallbackToLMP = v1;
  return result;
}

__int128 *HyperParams.keyOVUFallbackToLMP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyOVUFallbackToLMP != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyOVUFallbackToLMP;
}

uint64_t static HyperParams.keyOVUFallbackToLMP.getter()
{
  v1 = *HyperParams.keyOVUFallbackToLMP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinSliceAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinSliceAnchorDelta", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinSliceAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyMinSliceAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinSliceAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinSliceAnchorDelta;
}

uint64_t static HyperParams.keyMinSliceAnchorDelta.getter()
{
  v1 = *HyperParams.keyMinSliceAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxSliceAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxSliceAnchorDelta", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxSliceAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyMaxSliceAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxSliceAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxSliceAnchorDelta;
}

uint64_t static HyperParams.keyMaxSliceAnchorDelta.getter()
{
  v1 = *HyperParams.keyMaxSliceAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyPregLabelStartAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PregLabelStartAnchorDelta", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyPregLabelStartAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyPregLabelStartAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyPregLabelStartAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyPregLabelStartAnchorDelta;
}

uint64_t static HyperParams.keyPregLabelStartAnchorDelta.getter()
{
  v1 = *HyperParams.keyPregLabelStartAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLMPMinSliceAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMPMinSliceAnchorDelta", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLMPMinSliceAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyLMPMinSliceAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLMPMinSliceAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLMPMinSliceAnchorDelta;
}

uint64_t static HyperParams.keyLMPMinSliceAnchorDelta.getter()
{
  v1 = *HyperParams.keyLMPMinSliceAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLMPMaxSliceAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMPMaxSliceAnchorDelta", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLMPMaxSliceAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyLMPMaxSliceAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLMPMaxSliceAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLMPMaxSliceAnchorDelta;
}

uint64_t static HyperParams.keyLMPMaxSliceAnchorDelta.getter()
{
  v1 = *HyperParams.keyLMPMaxSliceAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLMPPregLabelStartAnchorDelta()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LMPPregLabelStartAnchorDelta", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLMPPregLabelStartAnchorDelta = v1;
  return result;
}

__int128 *HyperParams.keyLMPPregLabelStartAnchorDelta.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLMPPregLabelStartAnchorDelta != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLMPPregLabelStartAnchorDelta;
}

uint64_t static HyperParams.keyLMPPregLabelStartAnchorDelta.getter()
{
  v1 = *HyperParams.keyLMPPregLabelStartAnchorDelta.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinDaySHRAvailability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinDaySHRAvailability", 0x15uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinDaySHRAvailability = v1;
  return result;
}

__int128 *HyperParams.keyMinDaySHRAvailability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinDaySHRAvailability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinDaySHRAvailability;
}

uint64_t static HyperParams.keyMinDaySHRAvailability.getter()
{
  v1 = *HyperParams.keyMinDaySHRAvailability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinNightSHRAvailability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinNightSHRAvailability", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinNightSHRAvailability = v1;
  return result;
}

__int128 *HyperParams.keyMinNightSHRAvailability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinNightSHRAvailability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinNightSHRAvailability;
}

uint64_t static HyperParams.keyMinNightSHRAvailability.getter()
{
  v1 = *HyperParams.keyMinNightSHRAvailability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinWristTempAvailability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinWristTempAvailability", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinWristTempAvailability = v1;
  return result;
}

__int128 *HyperParams.keyMinWristTempAvailability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinWristTempAvailability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinWristTempAvailability;
}

uint64_t static HyperParams.keyMinWristTempAvailability.getter()
{
  v1 = *HyperParams.keyMinWristTempAvailability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinHRVAvailability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinHRVAvailability", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinHRVAvailability = v1;
  return result;
}

__int128 *HyperParams.keyMinHRVAvailability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinHRVAvailability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinHRVAvailability;
}

uint64_t static HyperParams.keyMinHRVAvailability.getter()
{
  v1 = *HyperParams.keyMinHRVAvailability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinRespiratoryRateAvailability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinRespiratoryRateAvailability", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinRespiratoryRateAvailability = v1;
  return result;
}

__int128 *HyperParams.keyMinRespiratoryRateAvailability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinRespiratoryRateAvailability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinRespiratoryRateAvailability;
}

uint64_t static HyperParams.keyMinRespiratoryRateAvailability.getter()
{
  v1 = *HyperParams.keyMinRespiratoryRateAvailability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMinSpO2Availability()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MinSpO2Availability", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMinSpO2Availability = v1;
  return result;
}

__int128 *HyperParams.keyMinSpO2Availability.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMinSpO2Availability != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMinSpO2Availability;
}

uint64_t static HyperParams.keyMinSpO2Availability.getter()
{
  v1 = *HyperParams.keyMinSpO2Availability.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsProcessEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsProcessEngine", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMetricsProcessEngine = v1;
  return result;
}

__int128 *HyperParams.keyMetricsProcessEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsProcessEngine != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMetricsProcessEngine;
}

uint64_t static HyperParams.keyMetricsProcessEngine.getter()
{
  v1 = *HyperParams.keyMetricsProcessEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMaxFPRs()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MaxFPRs", 7uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMaxFPRs = v1;
  return result;
}

__int128 *HyperParams.keyMaxFPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMaxFPRs != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMaxFPRs;
}

uint64_t static HyperParams.keyMaxFPRs.getter()
{
  v1 = *HyperParams.keyMaxFPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyOutputPostProcThresholds()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OutputPostProcThresholds", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyOutputPostProcThresholds = v1;
  return result;
}

__int128 *HyperParams.keyOutputPostProcThresholds.unsafeMutableAddressor()
{
  if (one-time initialization token for keyOutputPostProcThresholds != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyOutputPostProcThresholds;
}

uint64_t static HyperParams.keyOutputPostProcThresholds.getter()
{
  v1 = *HyperParams.keyOutputPostProcThresholds.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyConfusionMatrixNumThresholds()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ConfusionMatrixNumThresholds", 0x1CuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyConfusionMatrixNumThresholds = v1;
  return result;
}

__int128 *HyperParams.keyConfusionMatrixNumThresholds.unsafeMutableAddressor()
{
  if (one-time initialization token for keyConfusionMatrixNumThresholds != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyConfusionMatrixNumThresholds;
}

uint64_t static HyperParams.keyConfusionMatrixNumThresholds.getter()
{
  v1 = *HyperParams.keyConfusionMatrixNumThresholds.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyLatencyBuckets()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("LatencyBuckets", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyLatencyBuckets = v1;
  return result;
}

__int128 *HyperParams.keyLatencyBuckets.unsafeMutableAddressor()
{
  if (one-time initialization token for keyLatencyBuckets != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyLatencyBuckets;
}

uint64_t static HyperParams.keyLatencyBuckets.getter()
{
  v1 = *HyperParams.keyLatencyBuckets.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyUseFactorStartDateAsLMP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UseFactorStartDateAsLMP", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyUseFactorStartDateAsLMP = v1;
  return result;
}

__int128 *HyperParams.keyUseFactorStartDateAsLMP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyUseFactorStartDateAsLMP != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyUseFactorStartDateAsLMP;
}

uint64_t static HyperParams.keyUseFactorStartDateAsLMP.getter()
{
  v1 = *HyperParams.keyUseFactorStartDateAsLMP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyDropNegativeSlicesForInferredFactorLMP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DropNegativeSlicesForInferredFactorLMP", 0x26uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyDropNegativeSlicesForInferredFactorLMP = v1;
  return result;
}

__int128 *HyperParams.keyDropNegativeSlicesForInferredFactorLMP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyDropNegativeSlicesForInferredFactorLMP != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyDropNegativeSlicesForInferredFactorLMP;
}

uint64_t static HyperParams.keyDropNegativeSlicesForInferredFactorLMP.getter()
{
  v1 = *HyperParams.keyDropNegativeSlicesForInferredFactorLMP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyUseTestDateAsLMP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UseTestDateAsLMP", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyUseTestDateAsLMP = v1;
  return result;
}

__int128 *HyperParams.keyUseTestDateAsLMP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyUseTestDateAsLMP != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyUseTestDateAsLMP;
}

uint64_t static HyperParams.keyUseTestDateAsLMP.getter()
{
  v1 = *HyperParams.keyUseTestDateAsLMP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyDropNegativeSlicesForInferredTestLMP()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DropNegativeSlicesForInferredTestLMP", 0x24uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyDropNegativeSlicesForInferredTestLMP = v1;
  return result;
}

__int128 *HyperParams.keyDropNegativeSlicesForInferredTestLMP.unsafeMutableAddressor()
{
  if (one-time initialization token for keyDropNegativeSlicesForInferredTestLMP != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyDropNegativeSlicesForInferredTestLMP;
}

uint64_t static HyperParams.keyDropNegativeSlicesForInferredTestLMP.getter()
{
  v1 = *HyperParams.keyDropNegativeSlicesForInferredTestLMP.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMorpheusMetricsProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MorpheusMetricsProgramFileName", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMorpheusMetricsProgramFileName = v1;
  return result;
}

__int128 *HyperParams.keyMorpheusMetricsProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMorpheusMetricsProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMorpheusMetricsProgramFileName;
}

uint64_t static HyperParams.keyMorpheusMetricsProgramFileName.getter()
{
  v1 = *HyperParams.keyMorpheusMetricsProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsProcessFallbackToNative()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MetricsProcessFallbackToNative", 0x1EuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMetricsProcessFallbackToNative = v1;
  return result;
}

__int128 *HyperParams.keyMetricsProcessFallbackToNative.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsProcessFallbackToNative != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMetricsProcessFallbackToNative;
}

uint64_t static HyperParams.keyMetricsProcessFallbackToNative.getter()
{
  v1 = *HyperParams.keyMetricsProcessFallbackToNative.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyTargetFPRs()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TargetFPRs", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyTargetFPRs = v1;
  return result;
}

__int128 *HyperParams.keyTargetFPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for keyTargetFPRs != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyTargetFPRs;
}

uint64_t static HyperParams.keyTargetFPRs.getter()
{
  v1 = *HyperParams.keyTargetFPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyModelOutputNumberOfBuckets()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ModelOutputNumberOfBuckets", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyModelOutputNumberOfBuckets = v1;
  return result;
}

__int128 *HyperParams.keyModelOutputNumberOfBuckets.unsafeMutableAddressor()
{
  if (one-time initialization token for keyModelOutputNumberOfBuckets != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyModelOutputNumberOfBuckets;
}

uint64_t static HyperParams.keyModelOutputNumberOfBuckets.getter()
{
  v1 = *HyperParams.keyModelOutputNumberOfBuckets.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyRemoveOutlier()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RemoveOutlier", 0xDuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyRemoveOutlier = v1;
  return result;
}

__int128 *HyperParams.keyRemoveOutlier.unsafeMutableAddressor()
{
  if (one-time initialization token for keyRemoveOutlier != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyRemoveOutlier;
}

uint64_t static HyperParams.keyRemoveOutlier.getter()
{
  v1 = *HyperParams.keyRemoveOutlier.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyRemoveOutlierThreshold()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RemoveOutlierThreshold", 0x16uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyRemoveOutlierThreshold = v1;
  return result;
}

__int128 *HyperParams.keyRemoveOutlierThreshold.unsafeMutableAddressor()
{
  if (one-time initialization token for keyRemoveOutlierThreshold != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyRemoveOutlierThreshold;
}

uint64_t static HyperParams.keyRemoveOutlierThreshold.getter()
{
  v1 = *HyperParams.keyRemoveOutlierThreshold.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyRemoveOutlierWindowSize()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RemoveOutlierWindowSize", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyRemoveOutlierWindowSize = v1;
  return result;
}

__int128 *HyperParams.keyRemoveOutlierWindowSize.unsafeMutableAddressor()
{
  if (one-time initialization token for keyRemoveOutlierWindowSize != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyRemoveOutlierWindowSize;
}

uint64_t static HyperParams.keyRemoveOutlierWindowSize.getter()
{
  v1 = *HyperParams.keyRemoveOutlierWindowSize.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyApplySmooth()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ApplySmooth", 0xBuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyApplySmooth = v1;
  return result;
}

__int128 *HyperParams.keyApplySmooth.unsafeMutableAddressor()
{
  if (one-time initialization token for keyApplySmooth != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyApplySmooth;
}

uint64_t static HyperParams.keyApplySmooth.getter()
{
  v1 = *HyperParams.keyApplySmooth.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyFeaturizerEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizerEngine", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyFeaturizerEngine = v1;
  return result;
}

__int128 *HyperParams.keyFeaturizerEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyFeaturizerEngine != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyFeaturizerEngine;
}

uint64_t static HyperParams.keyFeaturizerEngine.getter()
{
  v1 = *HyperParams.keyFeaturizerEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMorpheusFeaturizerProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MorpheusFeaturizerProgramFileName", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMorpheusFeaturizerProgramFileName = v1;
  return result;
}

__int128 *HyperParams.keyMorpheusFeaturizerProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMorpheusFeaturizerProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMorpheusFeaturizerProgramFileName;
}

uint64_t static HyperParams.keyMorpheusFeaturizerProgramFileName.getter()
{
  v1 = *HyperParams.keyMorpheusFeaturizerProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyFeaturizerFallbackToNative()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizerFallbackToNative", 0x1AuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyFeaturizerFallbackToNative = v1;
  return result;
}

__int128 *HyperParams.keyFeaturizerFallbackToNative.unsafeMutableAddressor()
{
  if (one-time initialization token for keyFeaturizerFallbackToNative != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyFeaturizerFallbackToNative;
}

uint64_t static HyperParams.keyFeaturizerFallbackToNative.getter()
{
  v1 = *HyperParams.keyFeaturizerFallbackToNative.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyTrainingEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingEngine", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyTrainingEngine = v1;
  return result;
}

__int128 *HyperParams.keyTrainingEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyTrainingEngine != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyTrainingEngine;
}

uint64_t static HyperParams.keyTrainingEngine.getter()
{
  v1 = *HyperParams.keyTrainingEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMorpheusTrainingProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MorpheusTrainingProgramFileName", 0x1FuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMorpheusTrainingProgramFileName = v1;
  return result;
}

__int128 *HyperParams.keyMorpheusTrainingProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMorpheusTrainingProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMorpheusTrainingProgramFileName;
}

uint64_t static HyperParams.keyMorpheusTrainingProgramFileName.getter()
{
  v1 = *HyperParams.keyMorpheusTrainingProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyTrainingFallbackToNative()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("TrainingFallbackToNative", 0x18uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyTrainingFallbackToNative = v1;
  return result;
}

__int128 *HyperParams.keyTrainingFallbackToNative.unsafeMutableAddressor()
{
  if (one-time initialization token for keyTrainingFallbackToNative != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyTrainingFallbackToNative;
}

uint64_t static HyperParams.keyTrainingFallbackToNative.getter()
{
  v1 = *HyperParams.keyTrainingFallbackToNative.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyEvalEngine()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EvalEngine", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyEvalEngine = v1;
  return result;
}

__int128 *HyperParams.keyEvalEngine.unsafeMutableAddressor()
{
  if (one-time initialization token for keyEvalEngine != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyEvalEngine;
}

uint64_t static HyperParams.keyEvalEngine.getter()
{
  v1 = *HyperParams.keyEvalEngine.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMorpheusEvalProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MorpheusEvalProgramFileName", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyMorpheusEvalProgramFileName = v1;
  return result;
}

__int128 *HyperParams.keyMorpheusEvalProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMorpheusEvalProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyMorpheusEvalProgramFileName;
}

uint64_t static HyperParams.keyMorpheusEvalProgramFileName.getter()
{
  v1 = *HyperParams.keyMorpheusEvalProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyEvalFallbackToNative()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EvalFallbackToNative", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyEvalFallbackToNative = v1;
  return result;
}

__int128 *HyperParams.keyEvalFallbackToNative.unsafeMutableAddressor()
{
  if (one-time initialization token for keyEvalFallbackToNative != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyEvalFallbackToNative;
}

uint64_t static HyperParams.keyEvalFallbackToNative.getter()
{
  v1 = *HyperParams.keyEvalFallbackToNative.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyFeatureLookbackDays()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureLookbackDays", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.keyFeatureLookbackDays = v1;
  return result;
}

__int128 *HyperParams.keyFeatureLookbackDays.unsafeMutableAddressor()
{
  if (one-time initialization token for keyFeatureLookbackDays != -1)
  {
    swift_once();
  }

  return &static HyperParams.keyFeatureLookbackDays;
}

uint64_t static HyperParams.keyFeatureLookbackDays.getter()
{
  v1 = *HyperParams.keyFeatureLookbackDays.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for modelRepresentationEIR()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Espresso", 8uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.modelRepresentationEIR = v1;
  return result;
}

uint64_t static HyperParams.modelRepresentationEIR.getter()
{
  v1 = *HyperParams.modelRepresentationEIR.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for modelRepresentationMIL()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mil", 3uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.modelRepresentationMIL = v1;
  return result;
}

__int128 *HyperParams.modelRepresentationMIL.unsafeMutableAddressor()
{
  if (one-time initialization token for modelRepresentationMIL != -1)
  {
    swift_once();
  }

  return &static HyperParams.modelRepresentationMIL;
}

uint64_t static HyperParams.modelRepresentationMIL.getter()
{
  v1 = *HyperParams.modelRepresentationMIL.unsafeMutableAddressor();

  return v1;
}

void *HyperParams.defaultModelRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultModelRepresentation != -1)
  {
    swift_once();
  }

  return static HyperParams.defaultModelRepresentation;
}

uint64_t static HyperParams.defaultModelRepresentation.getter()
{
  v1 = *HyperParams.defaultModelRepresentation.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model.espresso.net", 0x12uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultModelName = v1;
  return result;
}

__int128 *HyperParams.defaultModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultModelName;
}

uint64_t static HyperParams.defaultModelName.getter()
{
  v1 = *HyperParams.defaultModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for labelEncodingTypeOnehot()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Onehot", 6uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.labelEncodingTypeOnehot = v1;
  return result;
}

uint64_t static HyperParams.labelEncodingTypeOnehot.getter()
{
  v1 = *HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for labelEncodingTypeRegression()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Regression", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.labelEncodingTypeRegression = v1;
  return result;
}

uint64_t static HyperParams.labelEncodingTypeRegression.getter()
{
  v1 = *HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();

  return v1;
}

void *HyperParams.defaultLabelEncodingType.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultLabelEncodingType != -1)
  {
    swift_once();
  }

  return static HyperParams.defaultLabelEncodingType;
}

uint64_t static HyperParams.defaultLabelEncodingType.getter()
{
  v1 = *HyperParams.defaultLabelEncodingType.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultInputShuffleMethod()
{
  v2 = type metadata accessor for ShuffleMethod();
  __swift_allocate_value_buffer(v2, static HyperParams.defaultInputShuffleMethod);
  v0 = __swift_project_value_buffer(v2, static HyperParams.defaultInputShuffleMethod);
  return (*(*(v2 - 8) + 104))(v0, *MEMORY[0x277D41358]);
}

uint64_t HyperParams.defaultInputShuffleMethod.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultInputShuffleMethod != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ShuffleMethod();
  return __swift_project_value_buffer(v0, static HyperParams.defaultInputShuffleMethod);
}

uint64_t static HyperParams.defaultInputShuffleMethod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = HyperParams.defaultInputShuffleMethod.unsafeMutableAddressor();
  v1 = type metadata accessor for ShuffleMethod();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t one-time initialization function for defaultMaxCycleLenStd()
{
  result = static Float.greatestFiniteMagnitude.getter();
  static HyperParams.defaultMaxCycleLenStd = v1;
  return result;
}

int *HyperParams.defaultMaxCycleLenStd.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMaxCycleLenStd != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMaxCycleLenStd;
}

uint64_t one-time initialization function for defaultEvalModels()
{
  result = Array.init()();
  static HyperParams.defaultEvalModels = result;
  return result;
}

uint64_t *HyperParams.defaultEvalModels.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultEvalModels != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultEvalModels;
}

uint64_t static HyperParams.defaultEvalModels.getter()
{
  v1 = *HyperParams.defaultEvalModels.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultModelPath()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dummy.mlmodelc", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultModelPath = v1;
  return result;
}

__int128 *HyperParams.defaultModelPath.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultModelPath != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultModelPath;
}

uint64_t static HyperParams.defaultModelPath.getter()
{
  v1 = *HyperParams.defaultModelPath.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputDaySHR10()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("day_shr_10", 0xAuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputDaySHR10 = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputDaySHR10.getter()
{
  v1 = *HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputNightSHR10()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("night_shr_10", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputNightSHR10 = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputNightSHR10.getter()
{
  v1 = *HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputPeriodStartMean()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("period_start_mean", 0x11uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputPeriodStartMean = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputPeriodStartMean.getter()
{
  v1 = *HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputPeriodStartStd()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("period_start_std", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputPeriodStartStd = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputPeriodStartStd.getter()
{
  v1 = *HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputAppleSleepingWristTemperature()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("apple_sleeping_wrist_temp", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputAppleSleepingWristTemperature = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputAppleSleepingWristTemperature.getter()
{
  v1 = *HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputDaysSinceLMS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("days_since_lms", 0xEuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputDaysSinceLMS = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputDaysSinceLMS.getter()
{
  v1 = *HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputHRV()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hrv", 3uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputHRV = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputHRV.getter()
{
  v1 = *HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputRespiratoryRate()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratory_rate", 0x10uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputRespiratoryRate = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputRespiratoryRate.getter()
{
  v1 = *HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for nightingaleDInputSpO2()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spo2", 4uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.nightingaleDInputSpO2 = v1;
  return result;
}

uint64_t static HyperParams.nightingaleDInputSpO2.getter()
{
  v1 = *HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultPregnancySourceList()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultPregnancySourceList = result;
  return result;
}

uint64_t *HyperParams.defaultPregnancySourceList.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultPregnancySourceList != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultPregnancySourceList;
}

uint64_t static HyperParams.defaultPregnancySourceList.getter()
{
  v1 = *HyperParams.defaultPregnancySourceList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultHKPregnancyStartSourceIncludeList()
{
  type metadata accessor for _HKPrivatePregnancyStartDateSource();
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultHKPregnancyStartSourceIncludeList = result;
  return result;
}

uint64_t *HyperParams.defaultHKPregnancyStartSourceIncludeList.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHKPregnancyStartSourceIncludeList != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultHKPregnancyStartSourceIncludeList;
}

uint64_t static HyperParams.defaultHKPregnancyStartSourceIncludeList.getter()
{
  v1 = *HyperParams.defaultHKPregnancyStartSourceIncludeList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultNightingaleDInputFeatureList()
{
  v12 = _allocateUninitializedArray<A>(_:)();
  v11 = v0;
  v1 = HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();
  outlined init with copy of String(v1, v11);
  v2 = HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();
  outlined init with copy of String(v2, v11 + 2);
  started = HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();
  outlined init with copy of String(started, v11 + 4);
  v4 = HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();
  outlined init with copy of String(v4, v11 + 6);
  v5 = HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();
  outlined init with copy of String(v5, v11 + 8);
  v6 = HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();
  outlined init with copy of String(v6, v11 + 10);
  v7 = HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();
  outlined init with copy of String(v7, v11 + 12);
  v8 = HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();
  outlined init with copy of String(v8, v11 + 14);
  v9 = HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();
  outlined init with copy of String(v9, v11 + 16);
  result = v12;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultNightingaleDInputFeatureList = v12;
  return result;
}

uint64_t *HyperParams.defaultNightingaleDInputFeatureList.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultNightingaleDInputFeatureList != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultNightingaleDInputFeatureList;
}

uint64_t static HyperParams.defaultNightingaleDInputFeatureList.getter()
{
  v1 = *HyperParams.defaultNightingaleDInputFeatureList.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultNightingaleDInputFeatureStatsOption()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_19NightingaleTraining18FeatureStatsOptionOtMd);
  _allocateUninitializedArray<A>(_:)();
  v11 = v0;
  v1 = HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();
  outlined init with copy of String(v1, v11);
  *(v11 + 16) = 2;
  v2 = HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();
  outlined init with copy of String(v2, (v11 + 24));
  *(v11 + 40) = 2;
  started = HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();
  outlined init with copy of String(started, (v11 + 48));
  *(v11 + 64) = 2;
  v4 = HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();
  outlined init with copy of String(v4, (v11 + 72));
  *(v11 + 88) = 2;
  v5 = HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();
  outlined init with copy of String(v5, (v11 + 96));
  *(v11 + 112) = 2;
  v6 = HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();
  outlined init with copy of String(v6, (v11 + 120));
  *(v11 + 136) = 2;
  v7 = HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();
  outlined init with copy of String(v7, (v11 + 144));
  *(v11 + 160) = 2;
  v8 = HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();
  outlined init with copy of String(v8, (v11 + 168));
  *(v11 + 184) = 2;
  v9 = HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();
  outlined init with copy of String(v9, (v11 + 192));
  *(v11 + 208) = 2;
  _finalizeUninitializedArray<A>(_:)();
  result = Dictionary.init(dictionaryLiteral:)();
  static HyperParams.defaultNightingaleDInputFeatureStatsOption = result;
  return result;
}

uint64_t *HyperParams.defaultNightingaleDInputFeatureStatsOption.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultNightingaleDInputFeatureStatsOption != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultNightingaleDInputFeatureStatsOption;
}

uint64_t static HyperParams.defaultNightingaleDInputFeatureStatsOption.getter()
{
  v1 = *HyperParams.defaultNightingaleDInputFeatureStatsOption.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultMaxFPRs()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0x3FA999999999999ALL;
  v1[1] = 0x3FB999999999999ALL;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultMaxFPRs = result;
  return result;
}

uint64_t *HyperParams.defaultMaxFPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMaxFPRs != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMaxFPRs;
}

uint64_t static HyperParams.defaultMaxFPRs.getter()
{
  v1 = *HyperParams.defaultMaxFPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultOutputPostProcThresholds()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0.5;
  *(v1 + 8) = 0x3FE999999999999ALL;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultOutputPostProcThresholds = result;
  return result;
}

uint64_t *HyperParams.defaultOutputPostProcThresholds.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultOutputPostProcThresholds != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultOutputPostProcThresholds;
}

uint64_t static HyperParams.defaultOutputPostProcThresholds.getter()
{
  v1 = *HyperParams.defaultOutputPostProcThresholds.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultLatencyBuckets()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = -1027080192;
  *(v1 + 4) = -14.0;
  *(v1 + 8) = -10.0;
  *(v1 + 12) = -7.0;
  *(v1 + 16) = -3.0;
  *(v1 + 20) = 0;
  *(v1 + 24) = 3.0;
  *(v1 + 28) = 7.0;
  *(v1 + 32) = 10.0;
  *(v1 + 36) = 14.0;
  *(v1 + 40) = 18.0;
  *(v1 + 44) = 21.0;
  *(v1 + 48) = 24.0;
  *(v1 + 52) = 28.0;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultLatencyBuckets = result;
  return result;
}

uint64_t *HyperParams.defaultLatencyBuckets.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultLatencyBuckets != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultLatencyBuckets;
}

uint64_t static HyperParams.defaultLatencyBuckets.getter()
{
  v1 = *HyperParams.defaultLatencyBuckets.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultMorpheusMetricsProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultMorpheusMetricsProgramFileName = v1;
  return result;
}

__int128 *HyperParams.defaultMorpheusMetricsProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMorpheusMetricsProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMorpheusMetricsProgramFileName;
}

uint64_t static HyperParams.defaultMorpheusMetricsProgramFileName.getter()
{
  v1 = *HyperParams.defaultMorpheusMetricsProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultTargetFPRs()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0x3FA999999999999ALL;
  v1[1] = 0x3FB999999999999ALL;
  _finalizeUninitializedArray<A>(_:)();
  static HyperParams.defaultTargetFPRs = result;
  return result;
}

uint64_t *HyperParams.defaultTargetFPRs.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTargetFPRs != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultTargetFPRs;
}

uint64_t static HyperParams.defaultTargetFPRs.getter()
{
  v1 = *HyperParams.defaultTargetFPRs.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultMorpheusFeaturizerProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultMorpheusFeaturizerProgramFileName = v1;
  return result;
}

__int128 *HyperParams.defaultMorpheusFeaturizerProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMorpheusFeaturizerProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMorpheusFeaturizerProgramFileName;
}

uint64_t static HyperParams.defaultMorpheusFeaturizerProgramFileName.getter()
{
  v1 = *HyperParams.defaultMorpheusFeaturizerProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultMorpheusTrainingProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultMorpheusTrainingProgramFileName = v1;
  return result;
}

__int128 *HyperParams.defaultMorpheusTrainingProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMorpheusTrainingProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMorpheusTrainingProgramFileName;
}

uint64_t static HyperParams.defaultMorpheusTrainingProgramFileName.getter()
{
  v1 = *HyperParams.defaultMorpheusTrainingProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultMorpheusEvalProgramFileName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultMorpheusEvalProgramFileName = v1;
  return result;
}

__int128 *HyperParams.defaultMorpheusEvalProgramFileName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMorpheusEvalProgramFileName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultMorpheusEvalProgramFileName;
}

uint64_t static HyperParams.defaultMorpheusEvalProgramFileName.getter()
{
  v1 = *HyperParams.defaultMorpheusEvalProgramFileName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultHeartRateFwEnd10PctModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model_fwEnd_10pct.mlmodelc/model.espresso.net", 0x2DuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultHeartRateFwEnd10PctModelName = v1;
  return result;
}

__int128 *HyperParams.defaultHeartRateFwEnd10PctModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeartRateFwEnd10PctModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultHeartRateFwEnd10PctModelName;
}

uint64_t static HyperParams.defaultHeartRateFwEnd10PctModelName.getter()
{
  v1 = *HyperParams.defaultHeartRateFwEnd10PctModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultHeartRatePeriod10PctModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model_period_10pct.mlmodelc/model.espresso.net", 0x2EuLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultHeartRatePeriod10PctModelName = v1;
  return result;
}

__int128 *HyperParams.defaultHeartRatePeriod10PctModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeartRatePeriod10PctModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultHeartRatePeriod10PctModelName;
}

uint64_t static HyperParams.defaultHeartRatePeriod10PctModelName.getter()
{
  v1 = *HyperParams.defaultHeartRatePeriod10PctModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultWTmpFwEndLstmModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fwEnddet_lstm.mlmodelc/model.espresso.net", 0x29uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultWTmpFwEndLstmModelName = v1;
  return result;
}

__int128 *HyperParams.defaultWTmpFwEndLstmModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultWTmpFwEndLstmModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultWTmpFwEndLstmModelName;
}

uint64_t static HyperParams.defaultWTmpFwEndLstmModelName.getter()
{
  v1 = *HyperParams.defaultWTmpFwEndLstmModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultWTmpFwEndRFModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fwEnddet_rf.mlmodelc/coremldata.bin", 0x23uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultWTmpFwEndRFModelName = v1;
  return result;
}

__int128 *HyperParams.defaultWTmpFwEndRFModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultWTmpFwEndRFModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultWTmpFwEndRFModelName;
}

uint64_t static HyperParams.defaultWTmpFwEndRFModelName.getter()
{
  v1 = *HyperParams.defaultWTmpFwEndRFModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultWTmpPeriodLstmModelName()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("period_lstm.mlmodelc/model.espresso.net", 0x27uLL, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultWTmpPeriodLstmModelName = v1;
  return result;
}

__int128 *HyperParams.defaultWTmpPeriodLstmModelName.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultWTmpPeriodLstmModelName != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultWTmpPeriodLstmModelName;
}

uint64_t static HyperParams.defaultWTmpPeriodLstmModelName.getter()
{
  v1 = *HyperParams.defaultWTmpPeriodLstmModelName.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultHeartRatePeriodTFModelNames()
{
  result = _allocateUninitializedArray<A>(_:)();
  static HyperParams.defaultHeartRatePeriodTFModelNames = result;
  return result;
}

uint64_t *HyperParams.defaultHeartRatePeriodTFModelNames.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeartRatePeriodTFModelNames != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultHeartRatePeriodTFModelNames;
}

uint64_t static HyperParams.defaultHeartRatePeriodTFModelNames.getter()
{
  v1 = *HyperParams.defaultHeartRatePeriodTFModelNames.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultHeartRatePeriodEnsembleModelNames()
{
  result = _allocateUninitializedArray<A>(_:)();
  static HyperParams.defaultHeartRatePeriodEnsembleModelNames = result;
  return result;
}

uint64_t *HyperParams.defaultHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultHeartRatePeriodEnsembleModelNames != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultHeartRatePeriodEnsembleModelNames;
}

uint64_t static HyperParams.defaultHeartRatePeriodEnsembleModelNames.getter()
{
  v1 = *HyperParams.defaultHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for defaultRecipeId()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  result = v1._countAndFlagsBits;
  static HyperParams.defaultRecipeId = v1;
  return result;
}

__int128 *HyperParams.defaultRecipeId.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultRecipeId != -1)
  {
    swift_once();
  }

  return &static HyperParams.defaultRecipeId;
}

uint64_t static HyperParams.defaultRecipeId.getter()
{
  v1 = *HyperParams.defaultRecipeId.unsafeMutableAddressor();

  return v1;
}

uint64_t HyperParams.recipe.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t HyperParams.recipe.setter(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t HyperParams.init(recipe:)(uint64_t a1)
{
  v27 = a1;
  v26 = v1;

  *(v1 + 16) = a1;
  v2 = HyperParams.keyNightingaleDInputFeatureList.unsafeMutableAddressor();
  outlined init with copy of String(v2, &v23);
  _convertToAnyHashable<A>(_:)();
  MEMORY[0x25F8891D0](v24, v22, a1, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
  if (v24[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    if (swift_dynamicCast())
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

    outlined destroy of AnyHashable(v22);
    outlined destroy of DefaultStringInterpolation();
    v12 = v11;
  }

  else
  {
    outlined destroy of AnyHashable(v22);
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of Pregnancy?(v24);
    v12 = 0;
  }

  v21 = v12;
  if (v12)
  {
    v25 = v21;
  }

  else
  {
    v3 = HyperParams.defaultNightingaleDInputFeatureList.unsafeMutableAddressor();
    outlined init with copy of [Float](v3, &v25);
  }

  *(v13 + 24) = v25;
  v4 = HyperParams.keyNightingaleDInputFeatureStatsOption.unsafeMutableAddressor();
  outlined init with copy of String(v4, &v18);
  _convertToAnyHashable<A>(_:)();
  MEMORY[0x25F8891D0](v19, v17, a1, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
  if (v19[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v9 = v16;
    }

    else
    {
      v9 = 0;
    }

    outlined destroy of AnyHashable(v17);
    outlined destroy of DefaultStringInterpolation();
    v10 = v9;
  }

  else
  {
    outlined destroy of AnyHashable(v17);
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of Pregnancy?(v19);
    v10 = 0;
  }

  if (v10)
  {
    v20 = v10;
  }

  else
  {
    HyperParams.defaultNightingaleDInputFeatureStatsOption.unsafeMutableAddressor();

    v8 = Dictionary.mapValues<A>(_:)();

    v20 = v8;
  }

  v7 = Dictionary.mapValues<A>(_:)();

  *(v13 + 32) = v7;

  return v13;
}

uint64_t closure #1 in implicit closure #2 in HyperParams.init(recipe:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeatureStatsOption.rawValue.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

NightingaleTraining::FeatureStatsOption_optional closure #2 in HyperParams.init(recipe:)@<W0>(Swift::String *a1@<X0>, NightingaleTraining::FeatureStatsOption *a2@<X8>)
{
  rawValue = *a1;

  result.value = FeatureStatsOption.init(rawValue:)(rawValue).value;
  if (result.value == NightingaleTraining_FeatureStatsOption_unknownDefault)
  {
    *a2 = NightingaleTraining_FeatureStatsOption_none;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

void *HyperParams.parameter<A>(for:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15 = a5;
  v19 = a1;
  v20 = a2;
  v16 = a3;
  v25 = a4;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  v35 = a4;
  v17 = type metadata accessor for Optional();
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v20);
  v26 = &v10 - v18;
  v33 = v7;
  v34 = v6;
  v32 = v8;
  v31 = v5;

  v30[0] = v19;
  v30[1] = v20;
  v22 = v29;
  _convertToAnyHashable<A>(_:)();
  v21 = &v28;
  swift_beginAccess();
  v23 = *(v5 + 16);

  swift_endAccess();
  v24 = &v27;
  MEMORY[0x25F8891D0](v22, v23, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  if (swift_dynamicCast())
  {
    (*(*(v25 - 8) + 56))(v26, 0, 1);
  }

  else
  {
    (*(*(v25 - 8) + 56))(v26, 1);
  }

  v11 = *(v25 - 8);
  v12 = v25 - 8;
  v13 = *(v11 + 48);
  v14 = v11 + 48;
  if ((v13)(v26, 1) == 1)
  {
    (*(v11 + 16))(v15, v16, v25);
    if (v13(v26, 1, v25) != 1)
    {
      outlined destroy of B?(v26, v25);
    }
  }

  else
  {
    (*(v11 + 32))(v15, v26, v25);
  }

  outlined destroy of AnyHashable(v29);
  result = v30;
  outlined destroy of DefaultStringInterpolation();
  return result;
}

uint64_t HyperParams.maximumDays.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMaximumDays.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(550).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.minimumDaysAgo.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMinDaysAgo.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(0).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.minDaySHRCountThreshold.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMinDaySHRCountThreshold.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(24).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.minNightSHRCountThreshold.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMinNightSHRCountThreshold.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(24).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.minimumNEligibleCyclesHistory.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMinNEligibleCyclesHistory.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(1).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.maximumNEligibleCyclesHistory.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMaxNEligibleCyclesHistory.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(100).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.sHRQueryBatchSize.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keySHRQueryBatchSize.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(10).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.sliceSize.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keySliceSize.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(45).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.rawSampleTimeout.getter()
{
  v7 = v0;
  v1 = HyperParams.keyRawSampleTimeout.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 30;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.shrTimeout.getter()
{
  v7 = v0;
  v1 = HyperParams.keySHRTimeout.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 30;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.bmiTimeout.getter()
{
  v7 = v0;
  v1 = HyperParams.keyBMITimeout.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 30;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.labelSize.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyLabelSize.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(32).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.maxNumDaysToNextPeriod.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMaxNumDaysToNextPeriod.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(32).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.modelRepresentation.getter()
{
  v10 = v0;
  v1 = HyperParams.keyModelRepresentation.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultModelRepresentation.unsafeMutableAddressor();
  v5 = *v2;
  v6 = v2[1];

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.batchSize.getter()
{
  v7 = v0;
  v1 = HyperParams.keyBatchSize.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

float HyperParams.learningRate.getter()
{
  v9[1] = 0;
  v0 = HyperParams.keyLearningRate.unsafeMutableAddressor();
  v4 = *v0;
  v5 = v0[1];

  v3 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(0.1).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v4, v5, &isa, v3, v9);
  MEMORY[0x277D82BD8](isa);

  v6 = v9[0];
  [v9[0] floatValue];
  v7 = v1;
  MEMORY[0x277D82BD8](v6);
  return v7;
}

uint64_t HyperParams.maxNumSlice.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMaxNumSlice.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.minNumSlice.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinNumSlice.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.inputName.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelInputName.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D837D0], &v6);
  outlined destroy of DefaultStringInterpolation();

  return v6;
}

uint64_t HyperParams.outputName.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelOutputName.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D837D0], &v6);
  outlined destroy of DefaultStringInterpolation();

  return v6;
}

uint64_t HyperParams.lossName.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelLossName.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D837D0], &v6);
  outlined destroy of DefaultStringInterpolation();

  return v6;
}

uint64_t HyperParams.labelName.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelLabelName.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D837D0], &v6);
  outlined destroy of DefaultStringInterpolation();

  return v6;
}

uint64_t HyperParams.weightNames.getter()
{
  v8 = v0;
  v1 = HyperParams.keyModelOrderedWeightNames.unsafeMutableAddressor();
  v4 = *v1;
  v5 = v1[1];

  v6 = _allocateUninitializedArray<A>(_:)();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v4, v5, &v6, v2, &v7);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  return v7;
}

uint64_t HyperParams.labelEncodingType.getter()
{
  v10 = v0;
  v1 = HyperParams.keyModelLabelEncodingType.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultLabelEncodingType.unsafeMutableAddressor();
  v5 = *v2;
  v6 = v2[1];

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.pflTaskType.getter()
{
  v9 = v0;
  v1 = HyperParams.keyPFLTaskType.unsafeMutableAddressor();
  v4 = *v1;
  v5 = v1[1];

  v7 = NightingalePFLTaskType.rawValue.getter(0);
  HyperParams.parameter<A>(for:default:)(v4, v5, &v7, MEMORY[0x277D83B88], &v8);

  v6.value = NightingalePFLTaskType.init(rawValue:)(v8).value;
  if (v6.value == NightingaleTraining_NightingalePFLTaskType_unknownDefault)
  {
    return 0;
  }

  else
  {
    return v6.value;
  }
}

uint64_t HyperParams.minNumOfDaySHRPerSlice.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinNumOfDaySHRPerSlice.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.defaultBMI.getter()
{
  v7 = v0;
  v1 = HyperParams.keyDefaultBMI.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.epochs.getter()
{
  v7 = v0;
  v1 = HyperParams.keyNumLocalIterations.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.birthDateRequired.getter()
{
  v7 = v0;
  v1 = HyperParams.keyBirthDateRequired.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.defaultAge.getter()
{
  v7 = v0;
  v1 = HyperParams.keyDefaultAge.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.fullBatchTraining.getter()
{
  v7 = v0;
  v1 = HyperParams.keyFullBatchTraining.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.evalBeforeTrain.getter()
{
  v7 = v0;
  v1 = HyperParams.keyEvalBeforeTrain.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.inputShuffleMethod.getter@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v26 = 0;
  v23 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24PrivateFederatedLearning13ShuffleMethodOSgMd);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v19 = &v8 - v9;
  v20 = type metadata accessor for ShuffleMethod();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v2 = &v8 - v10;
  v13 = &v8 - v10;
  v26 = v3;
  v4 = HyperParams.keyInputShuffleMethod.unsafeMutableAddressor();
  v15 = *v4;
  v16 = v4[1];

  v5 = HyperParams.defaultInputShuffleMethod.unsafeMutableAddressor();
  v11 = *(v17 + 16);
  v12 = v17 + 16;
  v11(v2, v5, v20);
  v14 = ShuffleMethod.rawValue.getter();
  (*(v17 + 8))(v13, v20);
  v24 = v14;
  HyperParams.parameter<A>(for:default:)(v15, v16, &v24, MEMORY[0x277D83B88], &v25);

  v23 = v25;
  ShuffleMethod.init(rawValue:)();
  v21 = *(v17 + 48);
  v22 = v17 + 48;
  if (v21(v19, 1, v20) != 1)
  {
    return (*(v17 + 32))(v8, v19, v20);
  }

  v7 = HyperParams.defaultInputShuffleMethod.unsafeMutableAddressor();
  v11(v8, v7, v20);
  result = (v21)(v19, 1, v20);
  if (result != 1)
  {
    return outlined destroy of ShuffleMethod?(v19);
  }

  return result;
}

uint64_t outlined destroy of ShuffleMethod?(uint64_t a1)
{
  v3 = type metadata accessor for ShuffleMethod();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t HyperParams.collectL2Norm.getter()
{
  v7 = v0;
  v1 = HyperParams.keyCollectL2Norm.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.modelMaxNumDaysToNextPeriod.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelMaxNumDaysToNextPeriod.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 32;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

float HyperParams.minCycleLenStd.getter()
{
  v9[1] = 0;
  v0 = HyperParams.keyMinCycleLenStd.unsafeMutableAddressor();
  v4 = *v0;
  v5 = v0[1];

  v3 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(0.0).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v4, v5, &isa, v3, v9);
  MEMORY[0x277D82BD8](isa);

  v6 = v9[0];
  [v9[0] floatValue];
  v7 = v1;
  MEMORY[0x277D82BD8](v6);
  return v7;
}

float HyperParams.maxCycleLenStd.getter()
{
  v10[1] = 0;
  v0 = HyperParams.keyMaxCycleLenStd.unsafeMutableAddressor();
  v5 = *v0;
  v6 = v0[1];

  v4 = type metadata accessor for NSNumber();
  v1 = HyperParams.defaultMaxCycleLenStd.unsafeMutableAddressor();
  isa = NSNumber.__allocating_init(value:)(*v1).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v5, v6, &isa, v4, v10);
  MEMORY[0x277D82BD8](isa);

  v7 = v10[0];
  [v10[0] floatValue];
  v8 = v2;
  MEMORY[0x277D82BD8](v7);
  return v8;
}

uint64_t HyperParams.evalModels.getter()
{
  v9 = v0;
  v1 = HyperParams.keyEvalModels.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v4 = *HyperParams.defaultEvalModels.unsafeMutableAddressor();

  v7 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v5, v6, &v7, v2, &v8);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  return v8;
}

uint64_t HyperParams.minNumDaysToNextPeriod.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMinNumDaysToNextPeriod.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(1).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.reportLastReachLocation.getter()
{
  v7 = v0;
  Reach = HyperParams.keyReportLastReachLocation.unsafeMutableAddressor();
  v3 = *Reach;
  v4 = Reach[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.modelPath.getter()
{
  v10 = v0;
  v1 = HyperParams.keyModelPath.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultModelPath.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.recipeForModel(model:)(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  v9 = v2;
  v7 = Dictionary.init()();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  HyperParams.parameter<A>(for:default:)(a1, a2, &v7, v3, &v8);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v8;
}

float HyperParams.intervalCorrectionFactor.getter()
{
  v9[1] = 0;
  v0 = HyperParams.keyIntervalCorrectionFactor.unsafeMutableAddressor();
  v4 = *v0;
  v5 = v0[1];

  v3 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(0.85).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v4, v5, &isa, v3, v9);
  MEMORY[0x277D82BD8](isa);

  v6 = v9[0];
  [v9[0] floatValue];
  v7 = v1;
  MEMORY[0x277D82BD8](v6);
  return v7;
}

uint64_t HyperParams.modelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.useCachedDayStreamProcessorConfig.getter()
{
  v7 = v0;
  v1 = HyperParams.keyUseCachedDayStreamProcessorConfig.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.sensorTimeout.getter()
{
  v7 = v0;
  v1 = HyperParams.keySensorTimeout.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 30;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.pregnancySourceList.getter()
{
  v14[1] = 0;
  v0 = HyperParams.keyPregnancySourceList.unsafeMutableAddressor();
  v8 = *v0;
  v9 = v0[1];

  v10 = *HyperParams.defaultPregnancySourceList.unsafeMutableAddressor();

  v13[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining15PregnancySourceOGMd);
  v1 = lazy protocol witness table accessor for type [PregnancySource] and conformance [A]();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in HyperParams.pregnancySourceList.getter, 0, v11, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13[0] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v8, v9, v13, v6, v14);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19NightingaleTraining15PregnancySourceOSgMd);
  v2 = lazy protocol witness table accessor for type [String] and conformance [A]();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #2 in HyperParams.pregnancySourceList.getter, 0, v6, v7, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining15PregnancySourceOSgGMd);
  lazy protocol witness table accessor for type [PregnancySource?] and conformance [A]();
  v4 = Sequence.compactMap<A>(_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();

  return v4;
}

uint64_t closure #1 in HyperParams.pregnancySourceList.getter@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = PregnancySource.rawValue.getter(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

NightingaleTraining::PregnancySource_optional closure #2 in HyperParams.pregnancySourceList.getter@<W0>(Swift::String *a1@<X0>, NightingaleTraining::PregnancySource_optional *a2@<X8>)
{
  rawValue = *a1;

  result.value = PregnancySource.init(rawValue:)(rawValue).value;
  a2->value = result.value;
  return result;
}

unint64_t lazy protocol witness table accessor for type [PregnancySource?] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [PregnancySource?] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PregnancySource?] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19NightingaleTraining15PregnancySourceOSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [PregnancySource?] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t HyperParams.hkPregnancyStartSourceIncludeList.getter()
{
  v15[1] = 0;
  started = HyperParams.keyHKPregnancyStartSourceIncludeList.unsafeMutableAddressor();
  v8 = *started;
  v9 = started[1];

  v10 = *HyperParams.defaultHKPregnancyStartSourceIncludeList.unsafeMutableAddressor();

  v14[1] = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo34_HKPrivatePregnancyStartDateSourceVGMd);
  v1 = lazy protocol witness table accessor for type [_HKPrivatePregnancyStartDateSource] and conformance [A]();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HyperParams.hkPregnancyStartSourceIncludeList.getter, v11, v12, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v13);

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v14[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v8, v9, v14, v5, v15);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v6 = type metadata accessor for _HKPrivatePregnancyStartDateSource();
  v2 = lazy protocol witness table accessor for type [String] and conformance [A]();
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in HyperParams.hkPregnancyStartSourceIncludeList.getter, v11, v5, v6, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v13);

  return v7;
}

uint64_t closure #1 in HyperParams.hkPregnancyStartSourceIncludeList.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = HyperParams.pregnancyStartSourceToString(_:)(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t closure #2 in HyperParams.hkPregnancyStartSourceIncludeList.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = HyperParams.stringToTregnancyStartSource(_:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t HyperParams.lmpMaxRange.getter()
{
  v7 = v0;
  v1 = HyperParams.keyLMPMaxRange.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 70;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.minPregnancyDuration.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinPregnancyDuration.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 42;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.maxPregnancyDuration.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMaxPregnancyDuration.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 322;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.overlapPregnanciesStrategy.getter()
{
  v11 = v0;
  v1 = HyperParams.keyOverlapPregnanciesStrategy.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = OverlapPregnanciesStrategy.rawValue.getter(1);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = OverlapPregnanciesStrategy.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_OverlapPregnanciesStrategy_unknownDefault)
  {
    value = NightingaleTraining_OverlapPregnanciesStrategy_merge;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.excludeContraceptionSlices.getter()
{
  v7 = v0;
  v1 = HyperParams.keyExcludeContraceptionSlices.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.excludeOtherPregnancySlices.getter()
{
  v7 = v0;
  v1 = HyperParams.keyExcludeOtherPregnancySlices.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.excludeLactationSlices.getter()
{
  v7 = v0;
  v1 = HyperParams.keyExcludeLactationSlices.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.minLMPFactorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinLMPFactorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.maxLMPFactorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMaxLMPFactorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 21;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.minLMPTestDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinLMPTestDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.maxLMPTestDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMaxLMPTestDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 21;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.useSeahorseInferredStartdate.getter()
{
  v7 = v0;
  v1 = HyperParams.keyUseSeahorseInferredStartdate.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.excludePregnanciesContainingFlow.getter()
{
  v7 = v0;
  v1 = HyperParams.keyExcludePregnanciesContainingFlow.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.maxLMPTolerableFlowDelta.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyMaxLMPTolerableFlowDelta.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(10).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.sliceDeltaAnchor.getter()
{
  v11 = v0;
  v1 = HyperParams.keySliceDeltaAnchor.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = SliceDeltaAnchor.rawValue.getter(1);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = SliceDeltaAnchor.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_SliceDeltaAnchor_unknownDefault)
  {
    value = NightingaleTraining_SliceDeltaAnchor_ovuEst;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.ovuFallbackToLMP.getter()
{
  v7 = v0;
  v1 = HyperParams.keyOVUFallbackToLMP.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 1;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.minSliceAnchorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinSliceAnchorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -60;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.maxSliceAnchorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMaxSliceAnchorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 42;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.pregLabelStartAnchorDelta.getter()
{
  v7 = v0;
  started = HyperParams.keyPregLabelStartAnchorDelta.unsafeMutableAddressor();
  v3 = *started;
  v4 = started[1];

  v5 = 13;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.lmpMinSliceAnchorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyLMPMinSliceAnchorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = -60;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.lmpMaxSliceAnchorDelta.getter()
{
  v7 = v0;
  v1 = HyperParams.keyLMPMaxSliceAnchorDelta.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 42;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.lmpPregLabelStartAnchorDelta.getter()
{
  v7 = v0;
  started = HyperParams.keyLMPPregLabelStartAnchorDelta.unsafeMutableAddressor();
  v3 = *started;
  v4 = started[1];

  v5 = 13;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

double HyperParams.minDaySHRAvailability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinDaySHRAvailability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

double HyperParams.minNightSHRAvailability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinNightSHRAvailability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

double HyperParams.minWristTempAvailability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinWristTempAvailability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

double HyperParams.minHRVAvailability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinHRVAvailability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

double HyperParams.minRespiratoryRateAvailability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinRespiratoryRateAvailability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

double HyperParams.minSpO2Availability.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMinSpO2Availability.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0x3FECCCCCCCCCCCCDLL;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839F8], &v6);

  return v6;
}

Swift::Bool __swiftcall HyperParams.isHRVRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isSpO2Required()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isRespiratoryRateRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isSWTRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isDaySHRRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isNightSHRRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isSHRRequired()()
{
  v2 = HyperParams.isDaySHRRequired()();

  v1 = v2 || HyperParams.isNightSHRRequired()();

  return v1;
}

Swift::Bool __swiftcall HyperParams.isPSMRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isPSSRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isDaysSinceLastPeriodStartRequired()()
{
  swift_beginAccess();

  swift_endAccess();
  HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v1 = Sequence<>.contains(_:)();
  outlined destroy of DefaultStringInterpolation();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1 & 1;
}

Swift::Bool __swiftcall HyperParams.isCalendarPeriodPredictionRequired()()
{
  v2 = HyperParams.isPSMRequired()();

  v1 = v2 || HyperParams.isPSSRequired()();

  return v1;
}

Swift::Bool __swiftcall HyperParams.isCalendarAlgorithmRequired()()
{
  v2 = HyperParams.isCalendarPeriodPredictionRequired()();

  v1 = v2 || HyperParams.isDaysSinceLastPeriodStartRequired()();

  return v1;
}

uint64_t HyperParams.hrvStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputHRV.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.spO2StatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputSpO2.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.respiratoryRateStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputRespiratoryRate.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.sWTStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputAppleSleepingWristTemperature.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.daySHRStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputDaySHR10.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.nightSHRStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputNightSHR10.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.pSMStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputPeriodStartMean.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.pSSStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputPeriodStartStd.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.daysSinceLastPeriodStartStatsOption.getter()
{
  v4 = v0;
  HyperParams.nightingaleDInputDaysSinceLMS.unsafeMutableAddressor();

  swift_beginAccess();

  swift_endAccess();
  MEMORY[0x25F8891D0](&v3);
  outlined destroy of DefaultStringInterpolation();
  if (v3 == 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = v3;
  }

  return v2;
}

uint64_t HyperParams.metricsProcessEngine.getter()
{
  v11 = v0;
  v1 = HyperParams.keyMetricsProcessEngine.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = NightingaleDProcessEngine.rawValue.getter(0);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = NightingaleDProcessEngine.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_NightingaleDProcessEngine_unknownDefault)
  {
    value = NightingaleTraining_NightingaleDProcessEngine_native;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.maxFPRs.getter()
{
  v14[1] = 0;
  v0 = HyperParams.keyMaxFPRs.unsafeMutableAddressor();
  v7 = *v0;
  v8 = v0[1];

  v9 = *HyperParams.defaultMaxFPRs.unsafeMutableAddressor();

  v13[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  v11 = type metadata accessor for NSNumber();
  v1 = lazy protocol witness table accessor for type [Double] and conformance [A]();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in HyperParams.maxFPRs.getter, 0, v10, v11, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  HyperParams.parameter<A>(for:default:)(v7, v8, v13, v5, v14);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v5, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v6;
}

NSNumber closure #1 in HyperParams.maxFPRs.getter@<X0>(double *a1@<X0>, NSNumber *a2@<X8>)
{
  value = *a1;
  type metadata accessor for NSNumber();
  result.super.super.isa = NSNumber.__allocating_init(value:)(value).super.super.isa;
  a2->super.super.isa = result.super.super.isa;
  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t HyperParams.targetFPRs.getter()
{
  v14[1] = 0;
  v0 = HyperParams.keyTargetFPRs.unsafeMutableAddressor();
  v7 = *v0;
  v8 = v0[1];

  v9 = *HyperParams.defaultTargetFPRs.unsafeMutableAddressor();

  v13[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  v11 = type metadata accessor for NSNumber();
  v1 = lazy protocol witness table accessor for type [Double] and conformance [A]();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in HyperParams.maxFPRs.getter, 0, v10, v11, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  HyperParams.parameter<A>(for:default:)(v7, v8, v13, v5, v14);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v5, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v6;
}

uint64_t HyperParams.outputPostProcThresholds.getter()
{
  v14[1] = 0;
  v0 = HyperParams.keyOutputPostProcThresholds.unsafeMutableAddressor();
  v7 = *v0;
  v8 = v0[1];

  v9 = *HyperParams.defaultOutputPostProcThresholds.unsafeMutableAddressor();

  v13[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd);
  v11 = type metadata accessor for NSNumber();
  v1 = lazy protocol witness table accessor for type [Double] and conformance [A]();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in HyperParams.maxFPRs.getter, 0, v10, v11, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  HyperParams.parameter<A>(for:default:)(v7, v8, v13, v5, v14);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v5, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v6;
}

uint64_t HyperParams.confusionMatrixNumThresholds.getter()
{
  v7 = v0;
  v1 = HyperParams.keyConfusionMatrixNumThresholds.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 10;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.latencyBuckets.getter()
{
  v14[1] = 0;
  v0 = HyperParams.keyLatencyBuckets.unsafeMutableAddressor();
  v7 = *v0;
  v8 = v0[1];

  v9 = *HyperParams.defaultLatencyBuckets.unsafeMutableAddressor();

  v13[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v11 = type metadata accessor for NSNumber();
  v1 = lazy protocol witness table accessor for type [Float] and conformance [A]();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in HyperParams.latencyBuckets.getter, 0, v10, v11, MEMORY[0x277D84A98], v1, MEMORY[0x277D84AC0], v12);
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v13[0] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd);
  HyperParams.parameter<A>(for:default:)(v7, v8, v13, v5, v14);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  v2 = lazy protocol witness table accessor for type [NSNumber] and conformance [A]();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in closure #5 in static HIDMorpheusExtensions.extendMorpheus(), 0, v5, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v12);

  return v6;
}

NSNumber closure #1 in HyperParams.latencyBuckets.getter@<X0>(float *a1@<X0>, NSNumber *a2@<X8>)
{
  value = *a1;
  type metadata accessor for NSNumber();
  result.super.super.isa = NSNumber.__allocating_init(value:)(value).super.super.isa;
  a2->super.super.isa = result.super.super.isa;
  return result;
}

uint64_t HyperParams.modelOutputNumberOfBuckets.getter()
{
  v7 = v0;
  v1 = HyperParams.keyModelOutputNumberOfBuckets.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 20;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.removeOutlier.getter()
{
  v7 = v0;
  v1 = HyperParams.keyRemoveOutlier.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

float HyperParams.removeOutlierThreshold.getter()
{
  v9[1] = 0;
  v0 = HyperParams.keyRemoveOutlierThreshold.unsafeMutableAddressor();
  v4 = *v0;
  v5 = v0[1];

  v3 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(1.0).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v4, v5, &isa, v3, v9);
  MEMORY[0x277D82BD8](isa);

  v6 = v9[0];
  [v9[0] floatValue];
  v7 = v1;
  MEMORY[0x277D82BD8](v6);
  return v7;
}

uint64_t HyperParams.removeoutlierWindowSize.getter()
{
  v7 = v0;
  v1 = HyperParams.keyRemoveOutlierWindowSize.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 7;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.applySmooth.getter()
{
  v7 = v0;
  v1 = HyperParams.keyApplySmooth.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.heartRateFwEnd10PctModelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyHeartRateFwEnd10PctModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultHeartRateFwEnd10PctModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.heartRatePeriod10PctModelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyHeartRatePeriod10PctModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultHeartRatePeriod10PctModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.wTmpFwEndLstmModelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyWTmpFwEndLstmModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultWTmpFwEndLstmModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.wTmpFwEndRFModelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyWTmpFwEndRFModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultWTmpFwEndRFModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.wTmpPeriodLstmModelName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyWTmpPeriodLstmModelName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultWTmpPeriodLstmModelName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.heartRatePeriodTFModelNames.getter()
{
  v9 = v0;
  v1 = HyperParams.keyHeartRatePeriodTFModelNames.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v4 = *HyperParams.defaultHeartRatePeriodTFModelNames.unsafeMutableAddressor();

  v7 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v5, v6, &v7, v2, &v8);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  return v8;
}

uint64_t HyperParams.heartRatePeriodEnsembleModelNames.getter()
{
  v9 = v0;
  v1 = HyperParams.keyHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v4 = *HyperParams.defaultHeartRatePeriodEnsembleModelNames.unsafeMutableAddressor();

  v7 = v4;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  HyperParams.parameter<A>(for:default:)(v5, v6, &v7, v2, &v8);
  outlined destroy of [(start: UInt32, end: UInt32)]();

  return v8;
}

uint64_t HyperParams.recipeId.getter()
{
  v10 = v0;
  v1 = HyperParams.keyRecipeId.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultRecipeId.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.useFactorStartDateAsLMP.getter()
{
  v7 = v0;
  started = HyperParams.keyUseFactorStartDateAsLMP.unsafeMutableAddressor();
  v3 = *started;
  v4 = started[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.useTestDateAsLMP.getter()
{
  v7 = v0;
  v1 = HyperParams.keyUseTestDateAsLMP.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.dropNegativeSlicesForInferredFactorLMP.getter()
{
  v7 = v0;
  v1 = HyperParams.keyDropNegativeSlicesForInferredFactorLMP.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.dropNegativeSlicesForInferredTestLMP.getter()
{
  v7 = v0;
  v1 = HyperParams.keyDropNegativeSlicesForInferredTestLMP.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D83B88], &v6);

  return v6;
}

uint64_t HyperParams.morpheusMetricsProgramFileName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyMorpheusMetricsProgramFileName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultMorpheusMetricsProgramFileName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.metricsProcessFallbackToNative.getter()
{
  v7 = v0;
  v1 = HyperParams.keyMetricsProcessFallbackToNative.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.featurizerEngine.getter()
{
  v11 = v0;
  v1 = HyperParams.keyFeaturizerEngine.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = NightingaleDProcessEngine.rawValue.getter(0);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = NightingaleDProcessEngine.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_NightingaleDProcessEngine_unknownDefault)
  {
    value = NightingaleTraining_NightingaleDProcessEngine_native;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.morpheusFeaturizerProgramFileName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyMorpheusFeaturizerProgramFileName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultMorpheusFeaturizerProgramFileName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.featurizerFallbackToNative.getter()
{
  v7 = v0;
  v1 = HyperParams.keyFeaturizerFallbackToNative.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.trainingEngine.getter()
{
  v11 = v0;
  v1 = HyperParams.keyTrainingEngine.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = NightingaleDProcessEngine.rawValue.getter(0);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = NightingaleDProcessEngine.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_NightingaleDProcessEngine_unknownDefault)
  {
    value = NightingaleTraining_NightingaleDProcessEngine_native;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.morpheusTrainingProgramFileName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyMorpheusTrainingProgramFileName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultMorpheusTrainingProgramFileName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.trainingFallbackToNative.getter()
{
  v7 = v0;
  v1 = HyperParams.keyTrainingFallbackToNative.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.evalEngine.getter()
{
  v11 = v0;
  v1 = HyperParams.keyEvalEngine.unsafeMutableAddressor();
  v5 = *v1;
  v6 = v1[1];

  v9[0] = NightingaleDProcessEngine.rawValue.getter(0);
  v9[1] = v2;
  HyperParams.parameter<A>(for:default:)(v5, v6, v9, MEMORY[0x277D837D0], &v10);
  outlined destroy of DefaultStringInterpolation();

  rawValue = v10;

  v8.value = NightingaleDProcessEngine.init(rawValue:)(rawValue).value;
  if (v8.value == NightingaleTraining_NightingaleDProcessEngine_unknownDefault)
  {
    value = NightingaleTraining_NightingaleDProcessEngine_native;
  }

  else
  {
    value = v8.value;
  }

  return value & 1;
}

uint64_t HyperParams.morpheusEvalProgramFileName.getter()
{
  v10 = v0;
  v1 = HyperParams.keyMorpheusEvalProgramFileName.unsafeMutableAddressor();
  v4 = *v1;
  v7 = v1[1];

  v2 = HyperParams.defaultMorpheusEvalProgramFileName.unsafeMutableAddressor();
  v5 = *v2;
  v6 = *(v2 + 1);

  v8[0] = v5;
  v8[1] = v6;
  HyperParams.parameter<A>(for:default:)(v4, v7, v8, MEMORY[0x277D837D0], &v9);
  outlined destroy of DefaultStringInterpolation();

  return v9;
}

uint64_t HyperParams.evalFallbackToNative.getter()
{
  v7 = v0;
  v1 = HyperParams.keyEvalFallbackToNative.unsafeMutableAddressor();
  v3 = *v1;
  v4 = v1[1];

  v5 = 0;
  HyperParams.parameter<A>(for:default:)(v3, v4, &v5, MEMORY[0x277D839B0], &v6);

  return v6 & 1;
}

uint64_t HyperParams.featureLookbackDays.getter()
{
  v8[1] = 0;
  v0 = HyperParams.keyFeatureLookbackDays.unsafeMutableAddressor();
  v3 = *v0;
  v4 = v0[1];

  v2 = type metadata accessor for NSNumber();
  isa = NSNumber.__allocating_init(value:)(550).super.super.isa;
  HyperParams.parameter<A>(for:default:)(v3, v4, &isa, v2, v8);
  MEMORY[0x277D82BD8](isa);

  v5 = v8[0];
  v6 = [v8[0] unsignedIntValue];
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t HyperParams.stringToTregnancyStartSource(_:)(uint64_t a1, uint64_t a2)
{

  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FirstDayOfLastMenstrualPeriod", 0x1DuLL, 1);
  v13 = MEMORY[0x25F889340](v2._countAndFlagsBits, v2._object, a1, a2);
  outlined destroy of DefaultStringInterpolation();
  if (v13)
  {

    return 0;
  }

  else
  {

    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EstimatedDueDate", 0x10uLL, 1);
    v9 = MEMORY[0x25F889340](v3._countAndFlagsBits, v3._object, a1, a2);
    outlined destroy of DefaultStringInterpolation();
    if (v9)
    {

      return 1;
    }

    else
    {

      v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EstimatedGestationalAge", 0x17uLL, 1);
      v8 = MEMORY[0x25F889340](v4._countAndFlagsBits, v4._object, a1, a2);
      outlined destroy of DefaultStringInterpolation();
      if (v8)
      {

        return 2;
      }

      else
      {

        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EmbryoTransfer", 0xEuLL, 1);
        v7 = MEMORY[0x25F889340](v5._countAndFlagsBits, v5._object, a1, a2);
        outlined destroy of DefaultStringInterpolation();

        if (v7)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t HyperParams.pregnancyStartSourceToString(_:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FirstDayOfLastMenstrualPeriod", 0x1DuLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EstimatedDueDate", 0x10uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EstimatedGestationalAge", 0x17uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("EmbryoTransfer", 0xEuLL, 1)._countAndFlagsBits;
  }

  return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unspecified", 0xBuLL, 1)._countAndFlagsBits;
}

uint64_t HyperParams.deinit()
{
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v1;
}

id @nonobjc NSNumber.init(value:)()
{
  return [v0 initWithDouble_];
}

{
  return [v0 initWithFloat_];
}

uint64_t static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v13 = *a5;
  v8 = NightingaleTelemetry.logger.unsafeMutableAddressor();
  swift_beginAccess();
  v15 = *v8;

  swift_endAccess();
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.priml.NightingaleTraining.PluginReach", 0x2FuLL, 1);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = v13;
  *(v16 + 56) = a6;
  (v15)(v6._countAndFlagsBits, v6._object, partial apply for closure #1 in static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:));
}

uint64_t static NightingaleTelemetry.sendNightingaleShadowEvaluationTelemetryLazy(flycatcherResults:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = NightingaleTelemetry.logger.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.hid.cycle_tracking.pfl_shadow_evaluation", 0x32uLL, 1);
  outlined init with copy of FlycatcherTelemetrics?(__dst, v6);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __dst, 0x118uLL);
  (v4)(v1._countAndFlagsBits, v1._object, partial apply for closure #1 in static NightingaleTelemetry.sendNightingaleShadowEvaluationTelemetryLazy(flycatcherResults:), v5);
}

NightingaleTraining::HIDPFLUseCase_optional __swiftcall HIDPFLUseCase.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      v3 = 0;
LABEL_32:
      *v1 = v3;
      return rawValue;
    case 1:
      v3 = 1;
      goto LABEL_32;
    case 2:
      v3 = 2;
      goto LABEL_32;
    case 3:
      v3 = 3;
      goto LABEL_32;
    case 4:
      v3 = 4;
      goto LABEL_32;
    case 5:
      v3 = 5;
      goto LABEL_32;
    case 6:
      v3 = 6;
      goto LABEL_32;
    case 7:
      v3 = 7;
      goto LABEL_32;
    case 8:
      v3 = 8;
      goto LABEL_32;
    case 9:
      v3 = 9;
      goto LABEL_32;
    case 10:
      v3 = 10;
      goto LABEL_32;
    case 11:
      v3 = 11;
      goto LABEL_32;
    case 12:
      v3 = 12;
      goto LABEL_32;
    case 13:
      v3 = 13;
      goto LABEL_32;
    case 14:
      v3 = 14;
      goto LABEL_32;
  }

  *v1 = 15;
  return rawValue;
}

uint64_t HIDPFLUseCase.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 2;
      break;
    case 3:
      v2 = 3;
      break;
    case 4:
      v2 = 4;
      break;
    case 5:
      v2 = 5;
      break;
    case 6:
      v2 = 6;
      break;
    case 7:
      v2 = 7;
      break;
    case 8:
      v2 = 8;
      break;
    case 9:
      v2 = 9;
      break;
    case 0xA:
      v2 = 10;
      break;
    case 0xB:
      v2 = 11;
      break;
    case 0xC:
      v2 = 12;
      break;
    case 0xD:
      v2 = 13;
      break;
    case 0xE:
      v2 = 14;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HIDPFLUseCase@<X0>(uint64_t *a1@<X8>)
{
  result = HIDPFLUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t @nonobjc AnalyticsSendEventLazy(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v9 = MEMORY[0x25F8892C0](a1, a2);

  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v16 = &block_descriptor_1;
  v8 = _Block_copy(&aBlock);
  v11 = AnalyticsSendEventLazy();
  _Block_release(v8);

  MEMORY[0x277D82BD8](v9);

  return v11;
}

uint64_t (*static NightingaleTelemetry.logger.getter())()
{
  v1 = NightingaleTelemetry.logger.unsafeMutableAddressor();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static NightingaleTelemetry.logger.setter(uint64_t (*a1)(), uint64_t (*a2)())
{
  v4 = NightingaleTelemetry.logger.unsafeMutableAddressor();

  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

uint64_t closure #1 in static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  _allocateUninitializedArray<A>(_:)();
  v8 = v4;
  *v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("taskId", 6uLL, 1);

  v8[1]._countAndFlagsBits = MEMORY[0x25F8892C0](a1, a2);
  *(v8 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("location", 8uLL, 1);

  v8[2]._object = MEMORY[0x25F8892C0](a3, a4);
  v8[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("useCase", 7uLL, 1);
  HIDPFLUseCase.rawValue.getter();
  v8[4]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v8 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("errorCode", 9uLL, 1);
  v8[5]._object = Int._bridgeToObjectiveC()().super.super.isa;
  _finalizeUninitializedArray<A>(_:)();

  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t closure #1 in static NightingaleTelemetry.sendNightingaleShadowEvaluationTelemetryLazy(flycatcherResults:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd);
  _allocateUninitializedArray<A>(_:)();
  v5 = v1;
  *v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("recipeId", 8uLL, 1);
  v3 = *a1;
  v6 = a1[1];

  v5[1]._countAndFlagsBits = MEMORY[0x25F8892C0](v3, v6);
  *(v5 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cycleIdx", 8uLL, 1);
  v5[2]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ensembleLogicId", 0xFuLL, 1);
  v5[4]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 72) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("selectedModelId", 0xFuLL, 1);
  v5[5]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[6] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("abserr", 6uLL, 1);
  v5[7]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 120) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("widthOneSide", 0xCuLL, 1);
  v5[8]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[9] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("widthTwoSide", 0xCuLL, 1);
  v5[10]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 168) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("coverage", 8uLL, 1);
  v5[11]._object = Bool._bridgeToObjectiveC()().super.super.isa;
  v5[12] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("baselineMean", 0xCuLL, 1);
  v5[13]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 216) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("baselineStd", 0xBuLL, 1);
  v5[14]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numHistCycles", 0xDuLL, 1);
  v5[16]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cycleLen", 8uLL, 1);
  v5[17]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysToModel0DRS", 0xFuLL, 1);
  v5[19]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 312) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysToModel1DRS", 0xFuLL, 1);
  v5[20]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[21] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysToModel2DRS", 0xFuLL, 1);
  v5[22]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 360) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model0Width", 0xBuLL, 1);
  v5[23]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[24] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model1Width", 0xBuLL, 1);
  v5[25]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 408) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("model2Width", 0xBuLL, 1);
  v5[26]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[27] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPeriod", 0x13uLL, 1);
  v5[28]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 456) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastContraceptionEnd", 0x1DuLL, 1);
  v5[29]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[30] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastPregnancyEnd", 0x19uLL, 1);
  v5[31]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 504) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("daysSinceLastLactationEnd", 0x19uLL, 1);
  v5[32]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[33] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceDayHRCount", 0xFuLL, 1);
  v5[34]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 552) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceDayHRMean", 0xEuLL, 1);
  v5[35]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[36] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceDayHRStd", 0xDuLL, 1);
  v5[37]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 600) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceNightHRCount", 0x11uLL, 1);
  v5[38]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[39] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceNightHRMean", 0x10uLL, 1);
  v5[40]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 648) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sliceNightHRStd", 0xFuLL, 1);
  v5[41]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[42] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numOutliers", 0xBuLL, 1);
  v5[43]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 696) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("numCycles", 9uLL, 1);
  v5[44]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[45] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullCycleLengthMean", 0x13uLL, 1);
  v5[46]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 744) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fullCycleLengthStd", 0x12uLL, 1);
  v5[47]._object = Int._bridgeToObjectiveC()().super.super.isa;
  v5[48] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bmi", 3uLL, 1);
  v5[49]._countAndFlagsBits = Int._bridgeToObjectiveC()().super.super.isa;
  *(v5 + 792) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("age", 3uLL, 1);
  v5[50]._object = Int._bridgeToObjectiveC()().super.super.isa;
  _finalizeUninitializedArray<A>(_:)();

  type metadata accessor for NSObject();
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type HIDPFLUseCase and conformance HIDPFLUseCase()
{
  v2 = lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase;
  if (!lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase;
  if (!lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HIDPFLUseCase and conformance HIDPFLUseCase);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for HIDPFLUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF1)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 14) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 241;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 15;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HIDPFLUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF1)
  {
    v5 = ((a3 + 14) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF1)
  {
    v4 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id ha_get_log()
{
  if (ha_get_log_onceToken != -1)
  {
    ha_get_log_cold_1();
  }

  v1 = ha_get_log_log;

  return v1;
}

uint64_t __ha_get_log_block_invoke()
{
  ha_get_log_log = os_log_create("com.apple.NightingaleAlgs", "framework");

  return MEMORY[0x2821F96F8]();
}

void Nightingale::preprocess_temperature_inputs_for_hist_cycle(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = (a2 - 43);
  Nightingale::extract_and_validate_temperature_data(a1, a3, __p);
  Nightingale::truncate_temperature_data(__p, v5, v6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *v6;
  v11 = v7;
  v6[1] = 0;
  v7 = 0;
  v6[0] = 0;
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(v12, v8);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(v13, v9);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v9);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v8);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  Nightingale::preprocess_all_temperature_data(__p, a4);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v13);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v12);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25C6350F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Nightingale::lunaExtractedData::~lunaExtractedData(va);
  _Unwind_Resume(a1);
}

void Nightingale::extract_and_validate_temperature_data(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 56) = 1065353216;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 1065353216;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 2);
  if (v4 < 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v5 = v4 & 0x7FFFFFFF;
    v6 = v5 + 1;
    v7 = 60 * v5;
    do
    {
      v8 = *a1;
      v9 = *a1 + v7;
      if (*(v9 - 4) == 1)
      {
        LOBYTE(v40) = *(v9 - 12);
        std::vector<int>::push_back[abi:ne200100](&v50, (v9 - 60));
        if (*(v9 - 4))
        {
          std::vector<float>::push_back[abi:ne200100](&v47, (v8 + v7 - 8));
          operator new();
        }

        std::__throw_bad_optional_access[abi:ne200100]();
      }

      --v6;
      v7 -= 60;
    }

    while (v6 > 1);
    v10 = v50;
    v11 = v51;
    v3 = a2;
  }

  v12 = v11 - v10;
  v13 = v12 >> 2;
  __p = 0;
  v42 = 0;
  v43 = 0;
  if ((v12 >> 2))
  {
    v14 = *(v10 + v12 - 4);
    v15 = v3 - v14;
    if (v3 >= v14)
    {
      v16 = -1;
      do
      {
        v17 = *v10++;
        ++v16;
      }

      while (v17 > v3);
    }

    else
    {
      v16 = 0;
    }

    *&v39[8] = 0;
    *v39 = (v3 - v14);
    if ((v15 & 0x80000000) == 0)
    {
      v18 = 0;
      v19 = v15 + 1;
      do
      {
        v40 = v3 - v18;
        if (v16 < v13 && v3 - v18 == *(v50 + v16))
        {
          std::vector<int>::push_back[abi:ne200100](&__p, &v40);
          v20 = v45;
          if (v45)
          {
            v21 = *(*&v39[4] + v16);
            if (*(v47 + v16) <= 0.0)
            {
              v22 = NAN;
            }

            else
            {
              v22 = *(v47 + v16);
            }

            do
            {
              v23 = (v20 + 2);
              if (*(v20 + 16) == v21)
              {
                v53[0] = v20 + 2;
                v24 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v23);
                *v53 = v22;
              }

              else
              {
                v53[0] = v20 + 2;
                v24 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v23);
                LODWORD(v53[0]) = 2143289344;
              }

              std::vector<float>::push_back[abi:ne200100](v24 + 3, v53);
              v20 = *v20;
            }

            while (v20);
          }

          ++v16;
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](&__p, &v40);
          for (i = v45; i; i = *i)
          {
            v53[0] = i + 16;
            v26 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, i + 16);
            LODWORD(v53[0]) = 2143289344;
            std::vector<float>::push_back[abi:ne200100](v26 + 3, v53);
          }
        }

        ++v18;
      }

      while (v18 != v19);
    }

    v27 = v45;
    if (v45)
    {
      v28 = *v39 + 1;
      do
      {
        v53[0] = v27 + 16;
        v29 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, v27 + 16);
        v30 = v29[3];
        v31 = v29[4] - v30;
        if ((v31 >> 2) < 1)
        {
          v32 = 0;
        }

        else
        {
          v32 = 0;
          v33 = (v30 + (v31 & 0x1FFFFFFFCLL) - 4);
          while ((*v33 & 0x7FFFFFFFu) >= 0x7F800000)
          {
            ++v32;
            --v33;
            if ((v31 >> 2) == v32)
            {
              v32 = v31 >> 2;
              break;
            }
          }
        }

        if (v32 < v28)
        {
          v28 = v32;
        }

        v27 = *v27;
      }

      while (v27);
      if (v28 >= 1 && v28 <= *v39)
      {
        for (j = 0; j != v28; ++j)
        {
          v42 -= 4;
          for (k = v45; k; k = *k)
          {
            v53[0] = k + 16;
            v36 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(&v44, k + 16);
            v36[4] = (v36[4] - 4);
          }
        }
      }
    }

    if ((a3 + 24) != &v44)
    {
      *(a3 + 56) = v46;
      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *> *>>((a3 + 24), v45, 0);
    }

    v37 = __p;
    if (&__p != a3)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, __p, v42, (v42 - __p) >> 2);
      v37 = __p;
    }

    if (v37)
    {
      v42 = v37;
      operator delete(v37);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&v44);
  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }
}

void sub_25C635664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(&a17);
  if (v28)
  {
    operator delete(v28);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
  }

  Nightingale::lunaExtractedData::~lunaExtractedData(v27);
  _Unwind_Resume(a1);
}

void Nightingale::truncate_temperature_data(Nightingale *this@<X0>, Nightingale::lunaExtractedData *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = *this;
  v7 = *(this + 1);
  v8 = v7 - *this;
  v9 = v8 >> 2;
  if (v7 == *this || *(v6 + v8 - 4) >= v3)
  {
LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, v6, v7, v9);
    std::unordered_map<unsigned char,std::vector<float>>::unordered_map(a3 + 24, this + 24);
    std::unordered_map<unsigned char,std::vector<int>>::unordered_map(a3 + 64, this + 64);
  }

  else
  {
    v10 = 0;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8 >> 2;
    }

    while (*(v6 + 4 * v10) != v3)
    {
      if (v11 == ++v10)
      {
        goto LABEL_8;
      }
    }

    v12 = v8 >> 2;
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    if (v10 + 1 < v12)
    {
      LODWORD(v12) = v10 + 1;
    }

    *a3 = 0uLL;
    *(a3 + 56) = 1065353216;
    *(a3 + 64) = 0uLL;
    *(a3 + 80) = 0uLL;
    *(a3 + 96) = 1065353216;
    v13 = 4 * v12;
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, v6, v13 + 4 + v6, (v13 + 4) >> 2);
    v14 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v14;
      operator delete(v14);
    }

    *a3 = *__p;
    *(a3 + 16) = v24;
    v15 = *(this + 5);
    if (v15)
    {
      v16 = v13 + 4;
      v17 = (v13 + 4) >> 2;
      do
      {
        *&v21 = v15 + 16;
        v18 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(this + 3, v15 + 16);
        __p[1] = 0;
        v24 = 0;
        __p[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, v18[3], v18[4], (v18[4] - v18[3]) >> 2);
        v22 = 0;
        v21 = 0uLL;
        std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v21, __p[0], __p[0] + v16, v17);
        v25 = (v15 + 16);
        v19 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a3 + 24), v15 + 16);
        v20 = v19[3];
        if (v20)
        {
          v19[4] = v20;
          operator delete(v20);
          v19[3] = 0;
          v19[4] = 0;
          v19[5] = 0;
        }

        *(v19 + 3) = v21;
        v19[5] = v22;
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v15 = *v15;
      }

      while (v15);
    }
  }
}

void sub_25C63595C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(v14 + 24);
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void Nightingale::lunaExtractedData::~lunaExtractedData(Nightingale::lunaExtractedData *this)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(this + 64);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(this + 24);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void Nightingale::preprocess_all_temperature_data(Nightingale *this@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 56) = 1065353216;
  *(a2 + 64) = 0u;
  v27 = (a2 + 64);
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1065353216;
  for (i = *(this + 5); i; i = *i)
  {
    v36 = *(i + 16);
    __src = 0;
    v34 = 0;
    v35 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v30, i[3], i[4], (i[4] - i[3]) >> 2);
    v5 = v30;
    v6 = v31;
    while (v5 != v6)
    {
      v7 = *v5;
      if (*v5 > 38.5)
      {
        v7 = NAN;
      }

      *v5++ = v7;
    }

    Nightingale::remove_outlier_via_sliding_window_r(&v30, 7, &__p, 1.0);
    v9 = __p;
    v8 = v29;
    if (__p != v29)
    {
      v10 = v34;
      do
      {
        v11 = (*v9 & 0x7FFFFFFFu) < 0x7F800000;
        if (v10 >= v35)
        {
          v12 = __src;
          v13 = v10 - __src;
          v14 = (v10 - __src) >> 2;
          v15 = v14 + 1;
          if ((v14 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v16 = v35 - __src;
          if ((v35 - __src) >> 1 > v15)
          {
            v15 = v16 >> 1;
          }

          v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
          v18 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v17)
          {
            v18 = v15;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v18);
          }

          v19 = (v10 - __src) >> 2;
          v20 = (4 * v14);
          v21 = (4 * v14 - 4 * v19);
          *v20 = v11;
          v10 = (v20 + 1);
          memcpy(v21, v12, v13);
          v22 = __src;
          __src = v21;
          v34 = v10;
          v35 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v10 = v11;
          v10 += 4;
        }

        v34 = v10;
        v9 += 4;
      }

      while (v9 != v8);
    }

    v37 = &v36;
    v3 = a2;
    v23 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>((a2 + 24), &v36) + 3;
    if (v23 != &__p)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v23, __p, v29, (v29 - __p) >> 2);
    }

    v37 = &v36;
    v24 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(v27, &v36) + 3;
    if (v24 != &__src)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v24, __src, v34, (v34 - __src) >> 2);
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (__src)
    {
      v34 = __src;
      operator delete(__src);
    }
  }

  if (v3 != this)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v3, *this, *(this + 1), (*(this + 1) - *this) >> 2);
  }
}

void Nightingale::prepare_temperature_input_slice_for_kdays(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      LODWORD(__p) = 2143289344;
      std::vector<float>::push_back[abi:ne200100](&v44, &__p);
      --v7;
    }

    while (v7);
  }

  if (a1[1] == *a1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      __p = 0;
      v43 = 0uLL;
      std::vector<std::vector<float>>::push_back[abi:ne200100](a4, &__p);
      if (__p)
      {
        *&v43 = __p;
        operator delete(__p);
      }

      LODWORD(__p) = 2143289344;
      std::vector<float>::push_back[abi:ne200100]((a4 + 24), &__p);
      ++v8;
      v9 = (a1[1] - *a1) >> 2;
    }

    while (v9 > v8);
  }

  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v9 & 0x7FFFFFFF;
    do
    {
      v12 = v11 - 1;
      if (v11 - 1 >= ((a1[1] - *a1) >> 2))
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v13 = *(*a1 + 4 * v12);
      v14 = (a3[1] - *a3) >> 2;
      v15 = v10;
      if (v14 > v10)
      {
        do
        {
          if (v13 >= *(*a3 + 4 * v15))
          {
            break;
          }

          ++v15;
        }

        while (v14 > v15);
        v10 = v15;
      }

      __p = 0;
      v43 = 0uLL;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v44, v45, (v45 - v44) >> 2);
      v16 = 1.0;
      if (v15 < (a3[1] - *a3) >> 2 && v13 == *(*a3 + 4 * v15))
      {
        v41 = 0;
        v17 = a3[10];
        if (!v17)
        {
          goto LABEL_38;
        }

        v18 = v10 + a2;
        v19 = 4 * v15;
        do
        {
          v20 = v17[3];
          v21 = (v17[4] - v20) >> 2;
          if (v18 < v21)
          {
            LODWORD(v21) = v10 + a2;
          }

          v39 = 0;
          v40 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v39, v20 + v19, v20 + 4 * v21, (4 * v21 - v19) >> 2);
          v22 = 0.0;
          if (v39 != v40)
          {
            v23 = v39;
            do
            {
              v24 = *v23++;
              v22 = v22 + v24;
            }

            while (v23 != v40);
          }

          v25 = 1.0 - v22 / a2;
          if (v16 > v25)
          {
            v41 = *(v17 + 16) | 0x100;
            v16 = v25;
          }

          if (v39)
          {
            *&v40 = v39;
            operator delete(v39);
          }

          v17 = *v17;
        }

        while (v17);
        if ((v41 & 0x100) != 0)
        {
          v39 = &v41;
          v26 = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(a3 + 3, &v41);
          v27 = v26[3];
          v28 = (v26[4] - v27) >> 2;
          if (v18 < v28)
          {
            LODWORD(v28) = v10 + a2;
          }

          v39 = 0;
          v40 = 0uLL;
          std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&v39, v27 + v19, v27 + 4 * v28, (4 * v28 - v19) >> 2);
          if (__p)
          {
            *&v43 = __p;
            operator delete(__p);
          }

          v29 = v39;
          __p = v39;
          v43 = v40;
          v30 = v40;
        }

        else
        {
LABEL_38:
          v29 = __p;
          v30 = v43;
        }

        while (a2 > ((v30 - v29) >> 2))
        {
          LODWORD(v39) = 2143289344;
          std::vector<float>::push_back[abi:ne200100](&__p, &v39);
          v29 = __p;
          v30 = v43;
        }

        v31 = v30 - 4;
        v32 = v29 != v30 && v31 > v29;
        if (v32)
        {
          v33 = v29 + 4;
          do
          {
            v34 = *(v33 - 1);
            *(v33 - 1) = *v31;
            *v31 = v34;
            v31 -= 4;
            v35 = v33 >= v31;
            v33 += 4;
          }

          while (!v35);
        }

        ++v10;
      }

      v36 = (*a4 + 24 * v12);
      v37 = __p;
      if (v36 != &__p)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v36, __p, v43, (v43 - __p) >> 2);
        v37 = __p;
      }

      *(*(a4 + 24) + 4 * v12) = v16;
      if (v37)
      {
        *&v43 = v37;
        operator delete(v37);
      }

      v32 = v11-- <= 1;
    }

    while (!v32);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_25C636114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  Nightingale::lunaInputSlice::~lunaInputSlice(v18);
  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void Nightingale::remove_outlier_via_sliding_window_r(void *a1@<X0>, int a2@<W1>, const void **a3@<X8>, float a4@<S0>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = (a1[1] - *a1) >> 2;
  v9 = 0;
  v10 = (v8 - 1);
  if (v8 >= 1)
  {
    while ((*(*a1 + 4 * v10) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      LODWORD(v29) = 2143289344;
      std::vector<float>::push_back[abi:ne200100](a3, &v29);
      ++v9;
      --v10;
      if (v8 == v9)
      {
        goto LABEL_21;
      }
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    v11 = v9 + a2;
    v12 = v10;
    v13 = 4 * v10;
    do
    {
      if (v12 >= (((a1[1] - *a1) >> 2) - v11))
      {
        std::vector<float>::push_back[abi:ne200100](a3, (*a1 + v13));
      }

      else
      {
        v14 = a3[1];
        v15 = (v14 - *a3) >> 2;
        if (v15 >= a2)
        {
          LODWORD(v15) = a2;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v29, v14 - 4 * v15, v14, v15);
        v16 = v13 + *a1;
        v27 = 0;
        v28 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(&__p, v16, v16 + 4, 1uLL);
        Nightingale::get_sw_difference(&v29, &__p);
        if (v17 >= a4 || v17 <= -a4)
        {
          v25 = 2143289344;
          std::vector<float>::push_back[abi:ne200100](a3, &v25);
        }

        else
        {
          std::vector<float>::push_back[abi:ne200100](a3, (*a1 + v13));
        }

        if (__p)
        {
          v27 = __p;
          operator delete(__p);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }
      }

      v13 -= 4;
      v21 = v12-- <= 0;
    }

    while (!v21);
  }

LABEL_21:
  v18 = *a3;
  v19 = a3[1];
  v20 = v19 - 4;
  v21 = *a3 != v19 && v20 > v18;
  if (v21)
  {
    v22 = v18 + 4;
    do
    {
      v23 = *(v22 - 1);
      *(v22 - 1) = *v20;
      *v20 = v23;
      v20 -= 4;
      v24 = v22 >= v20;
      v22 += 4;
    }

    while (!v24);
  }
}

void sub_25C63665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

int *Nightingale::get_sw_difference(char **a1, int **a2)
{
  v3 = *a1;
  v2 = a1[1];
  result = *a2;
  v5 = a2[1];
  v6 = (v5 - *a2) >> 2;
  for (i = (v2 - v3) >> 2; v3 != v2; LODWORD(i) = i - ((v8 & 0x7FFFFFFFu) > 0x7F7FFFFF))
  {
    v8 = *v3;
    v3 += 4;
  }

  v9 = v6;
  if (result != v5)
  {
    v9 = v6;
    v10 = result;
    do
    {
      v11 = *v10++;
      v9 -= (v11 & 0x7FFFFFFFu) > 0x7F7FFFFF;
    }

    while (v10 != v5);
  }

  if (i)
  {
    if (v9)
    {
      Nightingale::vMean<float>();
    }
  }

  return result;
}

char *Nightingale::calculate_snr_noise_power(char **a1, int **a2)
{
  result = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = (v5 - *a2) >> 2;
  v8 = (v3 - result) >> 2;
  if (v3 != result)
  {
    v8 = (v3 - result) >> 2;
    v9 = result;
    do
    {
      v10 = *v9;
      v9 += 4;
      LODWORD(v8) = v8 - ((v10 & 0x7FFFFFFFu) > 0x7F7FFFFF);
    }

    while (v9 != v3);
  }

  for (; v6 != v5; LODWORD(v7) = v7 - ((v11 & 0x7FFFFFFFu) > 0x7F7FFFFF))
  {
    v11 = *v6++;
  }

  if (v8 && v7 && v7 + v8 >= 3)
  {
    Nightingale::vVar<float>();
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799AB370, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<float>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799AB378, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C636D54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C636E08(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float const*>,std::__wrap_iter<float const*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25C636EC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void Nightingale::lunaInputSlice::~lunaInputSlice(Nightingale::lunaInputSlice *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t std::unordered_map<unsigned char,std::vector<float>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<float>> const&>(a1, i + 16);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<float>> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__construct_node_hash<std::pair<unsigned char const,std::vector<float>> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_25C637714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25C6377CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unordered_map<unsigned char,std::vector<int>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<int>> const&>(a1, i + 16);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char const,std::vector<int>> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__construct_node_hash<std::pair<unsigned char const,std::vector<int>> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_25C637AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25C637B8C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::find<unsigned char>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v13[0] = v8 + 2;
        v13[1] = v8 + 3;
        std::pair<unsigned char &,std::vector<float> &>::operator=[abi:ne200100]<unsigned char const,std::vector<float>,0>(v13, (v4 + 2));
        v10 = *v8;
        v11 = *(v8 + 16);
        v8[1] = v11;
        inserted = std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_prepare(a1, v11, v8 + 16);
        std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_perform(a1, v8, inserted);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__emplace_multi<std::pair<unsigned char const,std::vector<float>> const&>();
  }
}

void sub_25C637FB4(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::pair<unsigned char &,std::vector<float> &>::operator=[abi:ne200100]<unsigned char const,std::vector<float>,0>(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  if (v3 != (a2 + 8))
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<float>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<float>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<float>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_25C638548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25C638604(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<int>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<int>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<int>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

Nightingale::periodEstimatorLuna *Nightingale::periodEstimatorLuna::periodEstimatorLuna(Nightingale::periodEstimatorLuna *this, const Nightingale::ngt_Config *a2)
{
  v4 = Nightingale::periodEstimatorBase::periodEstimatorBase(this, a2);
  Nightingale::ngt_luna_period_dl_tmp_process::ngt_luna_period_dl_tmp_process((v4 + 8), a2);
  *(this + 16) = 0;
  *(this + 20) = 0;
  if (*(a2 + 52))
  {
    *(this + 4) = *(a2 + 12);
    *(this + 20) = 1;
  }

  return this;
}

void Nightingale::periodEstimatorLuna::~periodEstimatorLuna(Nightingale::periodEstimatorLuna *this)
{
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process((this + 8));

  Nightingale::periodEstimatorBase::~periodEstimatorBase(this);
}

{
  Nightingale::ngt_luna_period_dl_tmp_process::~ngt_luna_period_dl_tmp_process((this + 8));

  Nightingale::periodEstimatorBase::~periodEstimatorBase(this);
}

void Nightingale::periodEstimatorLuna::estimatePeriodLuna(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, const Nightingale::ngt_Config *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  Nightingale::CGradient::CGradient(a7);
  *(a7 + 56) = 0;
  *(a7 + 60) = 0;
  *(a7 + 64) = 0;
  *(a7 + 68) = 0;
  *(a7 + 72) = 0;
  *(a7 + 76) = 5;
  *(a7 + 80) = 0;
  v14 = a3[1];
  v36[0] = *(v14 - 96);
  v15 = *(v14 - 80);
  v16 = *(v14 - 64);
  v17 = *(v14 - 48);
  *&v38[13] = *(v14 - 35);
  v37 = v16;
  *v38 = v17;
  v36[1] = v15;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v18 = std::vector<Nightingale::Phase>::__init_with_size[abi:ne200100]<Nightingale::Phase*,Nightingale::Phase*>(&v39, *(v14 - 24), *(v14 - 16), *(v14 - 16) - *(v14 - 24));
  if (*a3 == a3[1] || BYTE4(v37) != 1 || BYTE12(v37) != 1 || *(a4 + 36) != 1 || *(a6 + 16) != 1 || *(a6 + 8) < *(a6 + 4))
  {
    goto LABEL_48;
  }

  AlgsUsedToRunLunaPeriod = Nightingale::periodEstimatorLuna::getAlgsUsedToRunLunaPeriod(v18, *a6, a3, a4, a5, *(a6 + 4));
  Nightingale::periodEstimatorCalendar::periodEstimatorCalendar(v35, a4);
  if (AlgsUsedToRunLunaPeriod == 1)
  {
    Nightingale::lstmLunaPeriod::lstmLunaPeriod(&v42, a2, a3, a4, *(a6 + 4));
    Nightingale::lstmLunaPeriod::estimatePeriodStartLuna(&v42, &__p);
    if (v32 == 1)
    {
      if (Nightingale::CGradient::get_vGrad_empty(&__p))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        AlgsUsedToRunLunaPeriod = 5;
      }

      else
      {
        if (&__p != a7)
        {
          std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a7, __p, v26, (v26 - __p) >> 2);
        }

        *(a7 + 24) = v27[0];
        *(a7 + 33) = *(v27 + 9);
        if (*(a7 + 60) == v29)
        {
          if (*(a7 + 60))
          {
            *(a7 + 56) = v28;
          }
        }

        else if (*(a7 + 60))
        {
          *(a7 + 60) = 0;
        }

        else
        {
          *(a7 + 56) = v28;
          *(a7 + 60) = 1;
        }

        if (*(a7 + 68) == v31)
        {
          if (*(a7 + 68))
          {
            *(a7 + 64) = v30;
          }
        }

        else if (*(a7 + 68))
        {
          *(a7 + 68) = 0;
        }

        else
        {
          *(a7 + 64) = v30;
          *(a7 + 68) = 1;
        }

        v21 = v33;
        v22 = v33 & 0xFFFFFF00;
        AlgsUsedToRunLunaPeriod = 1;
        v23 = v34;
      }

      *(a7 + 72) = 1;
    }

    else if (*a6 == 1)
    {
      v21 = v33;
      v22 = v33 & 0xFFFFFF00;
      AlgsUsedToRunLunaPeriod = 2;
      v23 = v34;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      AlgsUsedToRunLunaPeriod = 1;
    }

    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    Nightingale::lstmLunaPeriod::~lstmLunaPeriod(&v42);
    if ((v23 & 1) != 0 && Nightingale::periodEstimatorBase::checkDayToRunPeriodDLLessThanOPK(a1, a3[13], v22 | v21))
    {
      *(a7 + 80) = 1;
      *(a7 + 8) = *a7;
      if (*(a7 + 60) == 1)
      {
        *(a7 + 60) = 0;
      }

      if (*(a7 + 68) == 1)
      {
        *(a7 + 68) = 0;
      }

      *(a7 + 72) = 0;
      AlgsUsedToRunLunaPeriod = 5;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if (AlgsUsedToRunLunaPeriod)
  {
LABEL_43:
    if (AlgsUsedToRunLunaPeriod == 2)
    {
      Nightingale::periodEstimatorLuna::getPeriodRegularLuna(a1, *(a6 + 12), a3[12], v36, v35, &v42);
      v24 = *a7;
      if (*a7)
      {
        *(a7 + 8) = v24;
        operator delete(v24);
      }

      *a7 = v42;
      *(a7 + 16) = v43;
      *(a7 + 24) = v44[0];
      *(a7 + 33) = *(v44 + 9);
      AlgsUsedToRunLunaPeriod = 2;
    }

    goto LABEL_47;
  }

  Nightingale::periodEstimatorLuna::getPeriodRegularLuna(a1, 0, a3[12], v36, v35, &v42);
  v20 = *a7;
  if (*a7)
  {
    *(a7 + 8) = v20;
    operator delete(v20);
  }

  AlgsUsedToRunLunaPeriod = 0;
  *a7 = v42;
  *(a7 + 16) = v43;
  *(a7 + 24) = v44[0];
  *(a7 + 33) = *(v44 + 9);
LABEL_47:
  *(a7 + 76) = AlgsUsedToRunLunaPeriod;
  Nightingale::periodEstimatorCalendar::~periodEstimatorCalendar(v35);
LABEL_48:
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}