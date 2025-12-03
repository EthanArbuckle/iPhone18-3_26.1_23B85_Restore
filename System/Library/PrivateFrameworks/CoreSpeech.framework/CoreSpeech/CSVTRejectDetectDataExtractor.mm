@interface CSVTRejectDetectDataExtractor
- (CSVTRejectDetectDataExtractor)init;
- (void)classifyEventWithMetaData:(id)data;
@end

@implementation CSVTRejectDetectDataExtractor

- (void)classifyEventWithMetaData:(id)data
{
  dataCopy = data;
  if ([(CSVTRejectDetectDataExtractor *)self totalEventCount]< 0x7D1)
  {
    eventType = [dataCopy eventType];
    if (eventType > 1)
    {
      if (eventType == 2)
      {
        ++self->_spkrIdRejectCount;
        spkrIdScores = self->_spkrIdScores;
        [dataCopy score];
        v23 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)spkrIdScores addObject:v23];

        spkrIdTimeDelta = self->_spkrIdTimeDelta;
        [dataCopy deltaTimeFromActivation];
        v25 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)spkrIdTimeDelta addObject:v25];

        [dataCopy threshold];
        self->_phsThreshold = v26;
      }

      else if (eventType == 3)
      {
        ++self->_spkrIdRejectCount;
        v12 = self->_spkrIdScores;
        [dataCopy score];
        v13 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)v12 addObject:v13];

        v14 = self->_spkrIdTimeDelta;
        [dataCopy deltaTimeFromActivation];
        v15 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)v14 addObject:v15];

        [dataCopy threshold];
        self->_pjsThreshold = v16;
      }
    }

    else if (eventType)
    {
      if (eventType == 1)
      {
        ++self->_jsRejectCount;
        jsScores = self->_jsScores;
        [dataCopy score];
        v8 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)jsScores addObject:v8];

        jsTimeDelta = self->_jsTimeDelta;
        [dataCopy deltaTimeFromActivation];
        v10 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)jsTimeDelta addObject:v10];

        [dataCopy threshold];
        self->_jsThreshold = v11;
      }
    }

    else
    {
      ++self->_hsRejectCount;
      hsScores = self->_hsScores;
      [dataCopy score];
      v18 = [NSNumber numberWithFloat:?];
      [(NSMutableArray *)hsScores addObject:v18];

      hsTimeDelta = self->_hsTimeDelta;
      [dataCopy deltaTimeFromActivation];
      v20 = [NSNumber numberWithDouble:?];
      [(NSMutableArray *)hsTimeDelta addObject:v20];

      [dataCopy threshold];
      self->_hsThreshold = v21;
    }
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315138;
      v28 = "[CSVTRejectDetectDataExtractor classifyEventWithMetaData:]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Exceeded max entries, ignoring entry", &v27, 0xCu);
    }
  }
}

- (CSVTRejectDetectDataExtractor)init
{
  v17.receiver = self;
  v17.super_class = CSVTRejectDetectDataExtractor;
  v2 = [(CSVTRejectDetectDataExtractor *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_jsRejectCount = 0;
    v2->_hsRejectCount = 0;
    v2->_spkrIdRejectCount = 0;
    v4 = +[NSMutableArray array];
    hsScores = v3->_hsScores;
    v3->_hsScores = v4;

    v6 = +[NSMutableArray array];
    jsScores = v3->_jsScores;
    v3->_jsScores = v6;

    v8 = +[NSMutableArray array];
    spkrIdScores = v3->_spkrIdScores;
    v3->_spkrIdScores = v8;

    v10 = +[NSMutableArray array];
    hsTimeDelta = v3->_hsTimeDelta;
    v3->_hsTimeDelta = v10;

    v12 = +[NSMutableArray array];
    jsTimeDelta = v3->_jsTimeDelta;
    v3->_jsTimeDelta = v12;

    v14 = +[NSMutableArray array];
    spkrIdTimeDelta = v3->_spkrIdTimeDelta;
    v3->_spkrIdTimeDelta = v14;
  }

  return v3;
}

@end