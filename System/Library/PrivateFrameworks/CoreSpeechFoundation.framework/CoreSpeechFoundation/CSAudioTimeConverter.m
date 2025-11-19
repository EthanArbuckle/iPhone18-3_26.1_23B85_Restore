@interface CSAudioTimeConverter
- (CSAudioTimeConverter)init;
- (id)description;
- (unint64_t)hostTimeFromSampleCount:(unint64_t)a3;
- (unint64_t)sampleCountFromHostTime:(unint64_t)a3;
- (void)processSampleCount:(unint64_t)a3 hostTime:(unint64_t)a4;
@end

@implementation CSAudioTimeConverter

- (unint64_t)sampleCountFromHostTime:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSAudioTimeConverter_sampleCountFromHostTime___block_invoke;
  block[3] = &unk_1E865C920;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

unint64_t __48__CSAudioTimeConverter_sampleCountFromHostTime___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  +[CSConfig inputRecordingSampleRate];
  result = [CSFTimeUtils sampleCountFromHostTime:v2 anchorHostTime:v4 anchorSampleCount:v5 sampleRate:?];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (unint64_t)hostTimeFromSampleCount:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CSAudioTimeConverter_hostTimeFromSampleCount___block_invoke;
  block[3] = &unk_1E865C920;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

unint64_t __48__CSAudioTimeConverter_hostTimeFromSampleCount___block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[4];
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  +[CSConfig inputRecordingSampleRate];
  result = [CSFTimeUtils hostTimeFromSampleCount:v2 anchorHostTime:v4 anchorSampleCount:v5 sampleRate:?];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)processSampleCount:(unint64_t)a3 hostTime:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CSAudioTimeConverter_processSampleCount_hostTime___block_invoke;
  block[3] = &unk_1E865B1F0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

void *__52__CSAudioTimeConverter_processSampleCount_hostTime___block_invoke(void *result)
{
  *(result[4] + 16) = result[5];
  *(result[4] + 24) = result[6];
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"[anchorHostTime = %llu]", self->_anchorHostTime];
  [v3 appendFormat:@"[anchorSampleCount = %llu]", self->_anchorSampleCount];

  return v3;
}

- (CSAudioTimeConverter)init
{
  v6.receiver = self;
  v6.super_class = CSAudioTimeConverter;
  v2 = [(CSAudioTimeConverter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSampleCountHostTimeConverter", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_anchorSampleCount = 0;
    v2->_anchorHostTime = 0;
  }

  return v2;
}

@end