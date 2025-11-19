@interface PFVideoAVObjectBuilder(CMTimerange)
- (CMTimeRange)vcp_convertToOriginalTimerangeFromScaledTimerange:()CMTimerange;
@end

@implementation PFVideoAVObjectBuilder(CMTimerange)

- (CMTimeRange)vcp_convertToOriginalTimerangeFromScaledTimerange:()CMTimerange
{
  memset(&v11, 0, sizeof(v11));
  v6 = *(a2 + 16);
  *&range.start.value = *a2;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *(a2 + 32);
  CMTimeRangeGetEnd(&v11, &range);
  end = *a2;
  [a1 convertToOriginalTimeFromScaledTime:&end forExport:1];
  v8 = v11;
  [a1 convertToOriginalTimeFromScaledTime:&v8 forExport:1];
  return CMTimeRangeFromTimeToTime(a3, &range.start, &end);
}

@end