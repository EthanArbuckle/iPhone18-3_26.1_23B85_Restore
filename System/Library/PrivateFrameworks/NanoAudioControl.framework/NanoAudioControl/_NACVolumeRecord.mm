@interface _NACVolumeRecord
- (NSMutableSet)observers;
- (_NACVolumeRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _NACVolumeRecord

- (_NACVolumeRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _NACVolumeRecord;
  v5 = [(_NACVolumeRecord *)&v11 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_volumeValue);
    [v4 decodeFloatForKey:v6];
    v5->_volumeValue = v7;

    v8 = NSStringFromSelector(sel_isVolumeControlAvailable);
    v5->_volumeControlAvailable = [v4 decodeBoolForKey:v8];

    v9 = NSStringFromSelector(sel_isMuted);
    v5->_muted = [v4 decodeBoolForKey:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  volumeValue = self->_volumeValue;
  v5 = a3;
  v6 = NSStringFromSelector(sel_volumeValue);
  *&v7 = volumeValue;
  [v5 encodeFloat:v6 forKey:v7];

  volumeControlAvailable = self->_volumeControlAvailable;
  v9 = NSStringFromSelector(sel_isVolumeControlAvailable);
  [v5 encodeBool:volumeControlAvailable forKey:v9];

  muted = self->_muted;
  v11 = NSStringFromSelector(sel_isMuted);
  [v5 encodeBool:muted forKey:v11];
}

- (NSMutableSet)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

@end