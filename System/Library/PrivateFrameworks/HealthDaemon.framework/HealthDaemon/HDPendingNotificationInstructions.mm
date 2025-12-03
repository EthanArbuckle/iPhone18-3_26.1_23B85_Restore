@interface HDPendingNotificationInstructions
- (BOOL)isEqual:(id)equal;
- (HDPendingNotificationInstructions)initWithAction:(int64_t)action instructions:(id)instructions;
- (id)description;
@end

@implementation HDPendingNotificationInstructions

- (HDPendingNotificationInstructions)initWithAction:(int64_t)action instructions:(id)instructions
{
  instructionsCopy = instructions;
  v12.receiver = self;
  v12.super_class = HDPendingNotificationInstructions;
  v7 = [(HDPendingNotificationInstructions *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_action = action;
    v9 = [instructionsCopy copy];
    instructions = v8->_instructions;
    v8->_instructions = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  action = self->_action;
  v6 = NSStringFromHKNotificationInstructionAction();
  messageIdentifiers = [(HDPendingNotificationInstructions *)self messageIdentifiers];
  categoryIdentifiers = [(HDPendingNotificationInstructions *)self categoryIdentifiers];
  v9 = [v3 stringWithFormat:@"<%@:%@ mIDs:%@, cIDs:%@>", v4, v6, messageIdentifiers, categoryIdentifiers];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_action != v5->_action)
      {
        goto LABEL_9;
      }

      instructions = self->_instructions;
      v7 = v5->_instructions;
      if (instructions == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSSet *)instructions isEqual:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

@end