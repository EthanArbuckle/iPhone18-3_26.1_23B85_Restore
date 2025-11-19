@interface HTProcessExitFilteringConfiguration
- (BOOL)isEqual:(id)a3;
- (HTProcessExitFilteringConfiguration)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HTProcessExitFilteringConfiguration

- (HTProcessExitFilteringConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"allowsAllProcesses"];
  v6 = [v4 decodeBoolForKey:@"allowsCriticalProcesses"];
  v7 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedProcessNames"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowedReasons"];
  v9 = objc_opt_class();
  v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"allowedSubReasons"];

  v11 = +[HTProcessExitFilteringConfiguration configurationAllowingAllProcesses:criticalProcesses:processNames:reasons:subReasons:](HTProcessExitFilteringConfiguration, "configurationAllowingAllProcesses:criticalProcesses:processNames:reasons:subReasons:", v5, v6, v7, [v8 unsignedLongLongValue], v10);

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  allowsAllProcesses = self->_allowsAllProcesses;
  v6 = a3;
  [v6 encodeBool:allowsAllProcesses forKey:@"allowsAllProcesses"];
  [v6 encodeBool:self->_allowsCriticalProcesses forKey:@"allowsCriticalProcesses"];
  [v6 encodeObject:self->_allowedProcessNames forKey:@"allowedProcessNames"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_allowedReasons];
  [v6 encodeObject:v5 forKey:@"allowedReasons"];

  [v6 encodeObject:self->_allowedSubReasons forKey:@"allowedSubReasons"];
}

- (id)description
{
  v2 = @"NO";
  if (self->_allowsAllProcesses)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_allowsCriticalProcesses)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"all processes:      %@\ncritical processes: %@\nprocess names:      %@\nreasons:            %llu\nsub-reasons:        %@", v3, v2, self->_allowedProcessNames, self->_allowedReasons, self->_allowedSubReasons];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HTProcessExitFilteringConfiguration *)self allowsAllProcesses];
      if (v6 == [(HTProcessExitFilteringConfiguration *)v5 allowsAllProcesses]&& (v7 = [(HTProcessExitFilteringConfiguration *)self allowsCriticalProcesses], v7 == [(HTProcessExitFilteringConfiguration *)v5 allowsCriticalProcesses]))
      {
        v9 = [(HTProcessExitFilteringConfiguration *)self allowedProcessNames];
        v10 = [(HTProcessExitFilteringConfiguration *)v5 allowedProcessNames];
        if ([v9 isEqual:v10] && (v11 = -[HTProcessExitFilteringConfiguration allowedReasons](self, "allowedReasons"), v11 == -[HTProcessExitFilteringConfiguration allowedReasons](v5, "allowedReasons")))
        {
          v12 = [(HTProcessExitFilteringConfiguration *)self allowedSubReasons];
          v13 = [(HTProcessExitFilteringConfiguration *)v5 allowedSubReasons];
          v8 = [v12 isEqual:v13];
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = (self->_allowsCriticalProcesses ^ self->_allowsAllProcesses) & 1;
  v4 = [(NSArray *)self->_allowedProcessNames hash];
  allowedSubReasons = self->_allowedSubReasons;
  v6 = v4 ^ self->_allowedReasons ^ v3;
  return v6 ^ [(NSDictionary *)allowedSubReasons hash];
}

@end