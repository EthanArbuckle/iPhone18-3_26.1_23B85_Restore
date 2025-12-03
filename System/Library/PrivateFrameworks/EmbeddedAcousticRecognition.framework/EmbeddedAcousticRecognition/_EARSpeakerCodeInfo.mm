@interface _EARSpeakerCodeInfo
- (_EARSpeakerCodeInfo)initWithLanguage:(id)language;
@end

@implementation _EARSpeakerCodeInfo

- (_EARSpeakerCodeInfo)initWithLanguage:(id)language
{
  languageCopy = language;
  v40.receiver = self;
  v40.super_class = _EARSpeakerCodeInfo;
  v5 = [(_EARSpeakerCodeInfo *)&v40 init];
  if (v5)
  {
    v32 = languageCopy;
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:0];
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:0];
    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:0];
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:0];
    v38 = 0;
    v39 = 0;
    v36 = v6;
    v37 = 0;
    v34 = v8;
    v35 = v7;
    v33 = v9;
    v31 = objc_alloc_init(_EARSpeakerCodeReader);
    [(_EARSpeakerCodeReader *)v31 getTrainingSpeakerCode:&v39 inferenceSpeakerCode:&v38 accumulatedGradient:&v37 nnetVersion:&v36 numFrames:&v35 trainingOffset:&v34 recognitionOffset:&v33 language:languageCopy];
    v10 = v39;
    v11 = v38;
    v30 = v37;
    v12 = v36;

    v13 = v35;
    v14 = v34;

    v15 = v33;
    nnetVersion = v5->_nnetVersion;
    v5->_nnetVersion = v12;
    v17 = v12;

    numFrames = v5->_numFrames;
    v5->_numFrames = v13;
    v19 = v13;

    trainingOffset = v5->_trainingOffset;
    v5->_trainingOffset = v14;
    v21 = v14;

    recognitionOffset = v5->_recognitionOffset;
    v5->_recognitionOffset = v15;
    v23 = v15;

    trainingSpeakerCode = v5->_trainingSpeakerCode;
    v5->_trainingSpeakerCode = v10;
    v25 = v10;

    inferenceSpeakerCode = v5->_inferenceSpeakerCode;
    v5->_inferenceSpeakerCode = v11;
    v27 = v11;

    accumulatedGradient = v5->_accumulatedGradient;
    v5->_accumulatedGradient = v30;

    languageCopy = v32;
  }

  return v5;
}

@end