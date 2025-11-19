@interface IAPGroupedCommands
- (BOOL)cancelled;
- (BOOL)lineOutChanged;
- (BOOL)lineOutEnabled;
- (BOOL)videoOutSettingChanged;
@end

@implementation IAPGroupedCommands

- (BOOL)videoOutSettingChanged
{
  if (self->_videoOutSettingsChanged >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_videoOutSettingsChanged;
  }

  return self;
}

- (BOOL)lineOutEnabled
{
  if (self->_lineOutEnabled >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_lineOutEnabled;
  }

  return self;
}

- (BOOL)lineOutChanged
{
  if (self->_lineOutChanged >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_lineOutChanged;
  }

  return self;
}

- (BOOL)cancelled
{
  if (self->_cancelled >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_cancelled;
  }

  return self;
}

@end