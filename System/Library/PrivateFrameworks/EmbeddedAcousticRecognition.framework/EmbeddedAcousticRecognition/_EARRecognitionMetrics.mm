@interface _EARRecognitionMetrics
- (_EARRecognitionMetrics)initWithRecognizer:(shared_ptr<quasar::SpeechRecognizer>)recognizer;
- (id).cxx_construct;
- (void)addEmojiRecognitionMetrics:(id)metrics recognizedEmojis:(id)emojis;
- (void)addPauseDurationMetric;
@end

@implementation _EARRecognitionMetrics

- (_EARRecognitionMetrics)initWithRecognizer:(shared_ptr<quasar::SpeechRecognizer>)recognizer
{
  ptr = recognizer.__ptr_;
  v12.receiver = self;
  v12.super_class = _EARRecognitionMetrics;
  v4 = [(_EARRecognitionMetrics *)&v12 init:recognizer.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_recognizer.__cntrl_;
    v5->_recognizer.__ptr_ = v7;
    v5->_recognizer.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    allItnRunIntervals = v5->_allItnRunIntervals;
    v5->_allItnRunIntervals = v9;
  }

  return v5;
}

- (void)addPauseDurationMetric
{
  cntrl = self->_recognizer.__cntrl_;
  if (!cntrl)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = std::__shared_weak_count::lock(cntrl);
  if (!v4 || (ptr = self->_recognizer.__ptr_) == 0)
  {
LABEL_7:
    pauseDurations = self->_pauseDurations;
    self->_pauseDurations = MEMORY[0x1E695E0F0];

    if (!v4)
    {
      return;
    }

    goto LABEL_8;
  }

  quasar::SpeechRecognizer::getPauseDurations(ptr, __p);
  v6 = EARHelpers::VectorToArray<float>(__p);
  v7 = self->_pauseDurations;
  self->_pauseDurations = v6;

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_8:
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
}

- (void)addEmojiRecognitionMetrics:(id)metrics recognizedEmojis:(id)emojis
{
  metricsCopy = metrics;
  emojisCopy = emojis;
  v7 = [metricsCopy objectForKeyedSubscript:@"itnDurationInNs"];
  itnDurationInNs = self->_itnDurationInNs;
  self->_itnDurationInNs = v7;

  v9 = [metricsCopy objectForKeyedSubscript:@"isEmojiPersonalizationUsed"];
  self->_isEmojiPersonalizationUsed = [v9 BOOLValue];

  v10 = [metricsCopy objectForKeyedSubscript:@"isEmojiDisambiguationUsed"];
  self->_isEmojiDisambiguationUsed = [v10 BOOLValue];

  v11 = [metricsCopy objectForKeyedSubscript:@"isEmojiExpectedButNotRecognized"];
  self->_isEmojiExpectedButNotRecognized = [v11 BOOLValue];

  recognizedEmojis = self->_recognizedEmojis;
  self->_recognizedEmojis = emojisCopy;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end