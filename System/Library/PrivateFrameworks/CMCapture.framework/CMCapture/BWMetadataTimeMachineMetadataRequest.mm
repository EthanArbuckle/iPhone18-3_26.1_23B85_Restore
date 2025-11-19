@interface BWMetadataTimeMachineMetadataRequest
- (id)completeWithMetadata:(id)result;
- (id)description;
- (void)dealloc;
@end

@implementation BWMetadataTimeMachineMetadataRequest

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWMetadataTimeMachineMetadataRequest;
  [(BWMetadataTimeMachineRequest *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  *&time.start.value = *&self->_ptsRange.start.value;
  time.start.epoch = self->_ptsRange.start.epoch;
  Seconds = CMTimeGetSeconds(&time.start);
  v6 = *&self->_ptsRange.start.epoch;
  *&time.start.value = *&self->_ptsRange.start.value;
  *&time.start.epoch = v6;
  *&time.duration.timescale = *&self->_ptsRange.duration.timescale;
  CMTimeRangeGetEnd(&v9, &time);
  return [v3 stringWithFormat:@"<%@ %p>: PTS range: %.3fs -> %.3fs, metadata count:%d", v4, self, *&Seconds, CMTimeGetSeconds(&v9), -[NSArray count](self->_metadataForPTSRange, "count")];
}

- (id)completeWithMetadata:(id)result
{
  if (result)
  {
    v2 = result;
    *(result + 8) = a2;
    v3.receiver = v2;
    v3.super_class = BWMetadataTimeMachineMetadataRequest;
    return objc_msgSendSuper2(&v3, sel_complete);
  }

  return result;
}

@end