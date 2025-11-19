@interface CSVTRejectDetectDataExtractor
- (CSVTRejectDetectDataExtractor)init;
- (void)classifyEventWithMetaData:(id)a3;
@end

@implementation CSVTRejectDetectDataExtractor

- (void)classifyEventWithMetaData:(id)a3
{
  v4 = a3;
  if ([(CSVTRejectDetectDataExtractor *)self totalEventCount]< 0x7D1)
  {
    v6 = [v4 eventType];
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        ++self->_spkrIdRejectCount;
        spkrIdScores = self->_spkrIdScores;
        [v4 score];
        v23 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)spkrIdScores addObject:v23];

        spkrIdTimeDelta = self->_spkrIdTimeDelta;
        [v4 deltaTimeFromActivation];
        v25 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)spkrIdTimeDelta addObject:v25];

        [v4 threshold];
        self->_phsThreshold = v26;
      }

      else if (v6 == 3)
      {
        ++self->_spkrIdRejectCount;
        v12 = self->_spkrIdScores;
        [v4 score];
        v13 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)v12 addObject:v13];

        v14 = self->_spkrIdTimeDelta;
        [v4 deltaTimeFromActivation];
        v15 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)v14 addObject:v15];

        [v4 threshold];
        self->_pjsThreshold = v16;
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        ++self->_jsRejectCount;
        jsScores = self->_jsScores;
        [v4 score];
        v8 = [NSNumber numberWithFloat:?];
        [(NSMutableArray *)jsScores addObject:v8];

        jsTimeDelta = self->_jsTimeDelta;
        [v4 deltaTimeFromActivation];
        v10 = [NSNumber numberWithDouble:?];
        [(NSMutableArray *)jsTimeDelta addObject:v10];

        [v4 threshold];
        self->_jsThreshold = v11;
      }
    }

    else
    {
      ++self->_hsRejectCount;
      hsScores = self->_hsScores;
      [v4 score];
      v18 = [NSNumber numberWithFloat:?];
      [(NSMutableArray *)hsScores addObject:v18];

      hsTimeDelta = self->_hsTimeDelta;
      [v4 deltaTimeFromActivation];
      v20 = [NSNumber numberWithDouble:?];
      [(NSMutableArray *)hsTimeDelta addObject:v20];

      [v4 threshold];
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