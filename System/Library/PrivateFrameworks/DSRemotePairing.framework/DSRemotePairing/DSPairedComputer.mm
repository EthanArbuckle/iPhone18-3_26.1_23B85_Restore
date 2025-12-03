@interface DSPairedComputer
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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
  serialNumber = [(DSPairedComputer *)equalCopy serialNumber];
  LOBYTE(serialNumber) = [(NSString *)serialNumber isEqualToString:serialNumber];

  if ((serialNumber & 1) != 0 || (remotePairingFrameworkIdentifier = self->_remotePairingFrameworkIdentifier) != 0 && ([(DSPairedComputer *)equalCopy remotePairingFrameworkIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = [(NSString *)remotePairingFrameworkIdentifier isEqualToString:v8], v8, v9))
  {
LABEL_6:
    LOBYTE(lockdownFrameworkIdentifier) = 1;
  }

  else
  {
    lockdownFrameworkIdentifier = self->_lockdownFrameworkIdentifier;
    if (lockdownFrameworkIdentifier)
    {
      lockdownFrameworkIdentifier = [(DSPairedComputer *)equalCopy lockdownFrameworkIdentifier];
      LOBYTE(lockdownFrameworkIdentifier) = [(NSString *)lockdownFrameworkIdentifier isEqualToString:lockdownFrameworkIdentifier];
    }
  }

LABEL_8:

  return lockdownFrameworkIdentifier;
}

@end