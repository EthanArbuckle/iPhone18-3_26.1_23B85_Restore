@interface DSPairedComputer
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation DSPairedComputer

- (unint64_t)hash
{
  remotePairingFrameworkIdentifier = self->_remotePairingFrameworkIdentifier;
  if (!remotePairingFrameworkIdentifier)
  {
    remotePairingFrameworkIdentifier = self->_lockdownFrameworkIdentifier;
  }

  return [(NSString *)remotePairingFrameworkIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(lockdownFrameworkIdentifier) = 0;
    goto LABEL_8;
  }

  serialNumber = self->_serialNumber;
  v6 = [(DSPairedComputer *)v4 serialNumber];
  LOBYTE(serialNumber) = [(NSString *)serialNumber isEqualToString:v6];

  if ((serialNumber & 1) != 0 || (remotePairingFrameworkIdentifier = self->_remotePairingFrameworkIdentifier) != 0 && ([(DSPairedComputer *)v4 remotePairingFrameworkIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(NSString *)remotePairingFrameworkIdentifier isEqualToString:v8], v8, v9))
  {
LABEL_6:
    LOBYTE(lockdownFrameworkIdentifier) = 1;
  }

  else
  {
    lockdownFrameworkIdentifier = self->_lockdownFrameworkIdentifier;
    if (lockdownFrameworkIdentifier)
    {
      v12 = [(DSPairedComputer *)v4 lockdownFrameworkIdentifier];
      LOBYTE(lockdownFrameworkIdentifier) = [(NSString *)lockdownFrameworkIdentifier isEqualToString:v12];
    }
  }

LABEL_8:

  return lockdownFrameworkIdentifier;
}

@end