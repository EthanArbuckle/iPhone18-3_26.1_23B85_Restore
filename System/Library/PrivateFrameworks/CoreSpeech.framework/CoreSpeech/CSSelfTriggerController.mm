@interface CSSelfTriggerController
+ (BOOL)_isAVVCRefChannelAvailable;
+ (BOOL)shouldSetupSelfTrigger;
- (CSSelfTriggerController)initWithTargetQueue:(id)queue audioProviderSelecting:(id)selecting;
- (void)_handleEnabledPolicyEventForAudioSourceType:(unint64_t)type enabled:(BOOL)enabled;
- (void)_handleEnabledStatesUpdate:(id)update;
- (void)registerObserver:(id)observer;
- (void)setAsset:(id)asset;
- (void)start;
- (void)unregisterObserver:(id)observer;
@end

@implementation CSSelfTriggerController

- (void)unregisterObserver:(id)observer
{
  selfTriggerWithAVVCAudioSource = self->_selfTriggerWithAVVCAudioSource;
  observerCopy = observer;
  [(CSSelfTriggerDetector *)selfTriggerWithAVVCAudioSource unregisterObserver:observerCopy];
  [(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  selfTriggerWithAVVCAudioSource = self->_selfTriggerWithAVVCAudioSource;
  observerCopy = observer;
  [(CSSelfTriggerDetector *)selfTriggerWithAVVCAudioSource registerObserver:observerCopy];
  [(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource registerObserver:observerCopy];
}

- (void)setAsset:(id)asset
{
  selfTriggerWithAVVCAudioSource = self->_selfTriggerWithAVVCAudioSource;
  assetCopy = asset;
  [(CSSelfTriggerDetector *)selfTriggerWithAVVCAudioSource setAsset:assetCopy];
  [(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource setAsset:assetCopy];
}

- (void)_handleEnabledStatesUpdate:(id)update
{
  updateCopy = update;
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    enabledStates = self->_enabledStates;
    *buf = 136315394;
    v26 = "[CSSelfTriggerController _handleEnabledStatesUpdate:]";
    v27 = 2114;
    v28 = enabledStates;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s enabledStates : %{public}@", buf, 0x16u);
  }

  v7 = [updateCopy objectAtIndexedSubscript:0];
  bOOLValue = [v7 BOOLValue];

  v9 = [updateCopy objectAtIndexedSubscript:1];
  bOOLValue2 = [v9 BOOLValue];

  if (!bOOLValue)
  {
    selfTriggerWithAVVCAudioSource = self->_selfTriggerWithAVVCAudioSource;
    if (!bOOLValue2)
    {
      [(CSSelfTriggerDetector *)selfTriggerWithAVVCAudioSource stopAnalyzeWithCompletion:0];
      selfTriggerWithTapAudioSource = self->_selfTriggerWithTapAudioSource;
      v12 = 0;
      goto LABEL_12;
    }

    if ([(CSSelfTriggerDetector *)selfTriggerWithAVVCAudioSource currentState]== 1 || [(CSSelfTriggerDetector *)self->_selfTriggerWithAVVCAudioSource currentState]== 2)
    {
      selfTriggerWithTapAudioSource = self->_selfTriggerWithAVVCAudioSource;
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100058948;
      v18 = &unk_100253300;
      selfCopy = self;
      v12 = &v15;
      goto LABEL_12;
    }

    v14 = self->_selfTriggerWithTapAudioSource;
LABEL_16:
    [(CSSelfTriggerDetector *)v14 startAnalyze];
    goto LABEL_13;
  }

  if ([(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource currentState]!= 1 && [(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource currentState]!= 2)
  {
    v14 = self->_selfTriggerWithAVVCAudioSource;
    goto LABEL_16;
  }

  selfTriggerWithTapAudioSource = self->_selfTriggerWithTapAudioSource;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10005893C;
  v23 = &unk_100253300;
  selfCopy2 = self;
  v12 = &v20;
LABEL_12:
  [(CSSelfTriggerDetector *)selfTriggerWithTapAudioSource stopAnalyzeWithCompletion:v12, v15, v16, v17, v18, selfCopy, v20, v21, v22, v23, selfCopy2];
LABEL_13:
}

- (void)_handleEnabledPolicyEventForAudioSourceType:(unint64_t)type enabled:(BOOL)enabled
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000589CC;
  block[3] = &unk_100253028;
  enabledCopy = enabled;
  block[4] = self;
  block[5] = type;
  dispatch_async(queue, block);
}

- (void)start
{
  [(CSSelfTriggerDetector *)self->_selfTriggerWithAVVCAudioSource start];
  [(CSSelfTriggerDetector *)self->_selfTriggerWithTapAudioSource start];
  objc_initWeak(&location, self);
  if (self->_selfTriggerWithAVVCAudioSource)
  {
    v3 = [CSSelfTriggerDetectorEnabledPolicyFactory selfTriggerDetectorEnabledPolicyWithAudioSourceType:0];
    enabledPolicyWithAVVCAudioSource = self->_enabledPolicyWithAVVCAudioSource;
    self->_enabledPolicyWithAVVCAudioSource = v3;

    v5 = self->_enabledPolicyWithAVVCAudioSource;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100003500;
    v13[3] = &unk_100253000;
    objc_copyWeak(&v14, &location);
    [(CSPolicy *)v5 setCallback:v13];
    objc_destroyWeak(&v14);
  }

  if (self->_selfTriggerWithTapAudioSource)
  {
    v6 = [CSSelfTriggerDetectorEnabledPolicyFactory selfTriggerDetectorEnabledPolicyWithAudioSourceType:1];
    enabledPolicyWithTapAudioSource = self->_enabledPolicyWithTapAudioSource;
    self->_enabledPolicyWithTapAudioSource = v6;

    v8 = self->_enabledPolicyWithTapAudioSource;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100058D1C;
    v11[3] = &unk_100253000;
    objc_copyWeak(&v12, &location);
    [(CSPolicy *)v8 setCallback:v11];
    objc_destroyWeak(&v12);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100058D70;
  v10[3] = &unk_100253C20;
  v10[4] = self;
  dispatch_async(queue, v10);
  objc_destroyWeak(&location);
}

- (CSSelfTriggerController)initWithTargetQueue:(id)queue audioProviderSelecting:(id)selecting
{
  queueCopy = queue;
  selectingCopy = selecting;
  v18.receiver = self;
  v18.super_class = CSSelfTriggerController;
  v8 = [(CSSelfTriggerController *)&v18 init];
  if (v8)
  {
    v9 = [CSUtils getSerialQueue:@"CSSelfTriggerController Queue" qualityOfService:33];
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [NSMutableArray arrayWithCapacity:2];
    enabledStates = v8->_enabledStates;
    v8->_enabledStates = v11;

    [(NSMutableArray *)v8->_enabledStates addObject:&__kCFBooleanFalse];
    [(NSMutableArray *)v8->_enabledStates addObject:&__kCFBooleanFalse];
    if (+[CSSelfTriggerController _isAVVCRefChannelAvailable])
    {
      v13 = [[CSSelfTriggerDetector alloc] initWithTargetQueue:queueCopy audioProviderSelecting:selectingCopy audioSourceType:0];
      selfTriggerWithAVVCAudioSource = v8->_selfTriggerWithAVVCAudioSource;
      v8->_selfTriggerWithAVVCAudioSource = v13;
    }

    if (+[CSUtils supportAudioTappingSelfTrigger])
    {
      v15 = [[CSSelfTriggerDetector alloc] initWithTargetQueue:queueCopy audioProviderSelecting:selectingCopy audioSourceType:1];
      selfTriggerWithTapAudioSource = v8->_selfTriggerWithTapAudioSource;
      v8->_selfTriggerWithTapAudioSource = v15;
    }
  }

  return v8;
}

+ (BOOL)_isAVVCRefChannelAvailable
{
  if ((+[CSUtils isExclaveHardware]& 1) != 0)
  {
    return 0;
  }

  v3 = +[CSConfig inputRecordingNumberOfChannels];
  v4 = +[CSConfig channelForOutputReference];

  return [CSUtils supportSelfTriggerSuppression:v3 refChannelIdx:v4];
}

+ (BOOL)shouldSetupSelfTrigger
{
  if (+[CSSelfTriggerController _isAVVCRefChannelAvailable])
  {
    return 1;
  }

  return +[CSUtils supportAudioTappingSelfTrigger];
}

@end