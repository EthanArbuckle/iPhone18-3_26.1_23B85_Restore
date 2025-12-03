@interface MNTraceNetworkEvent
- (BOOL)isEqual:(id)equal;
@end

@implementation MNTraceNetworkEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_cellEnabled == v5[8] && self->_wifiEnabled == v5[9] && self->_nlcEnabled == v5[10])
    {
      v7 = [(NSString *)self->_nlcProfile isEqual:*(v5 + 3)];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end