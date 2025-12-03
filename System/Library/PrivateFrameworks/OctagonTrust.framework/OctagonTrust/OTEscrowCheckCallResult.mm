@interface OTEscrowCheckCallResult
- (OTEscrowCheckCallResult)initWithCoder:(id)coder;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OTEscrowCheckCallResult

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[OTEscrowCheckCallResult needsReenroll](self, "needsReenroll")}];
  [v3 setObject:v4 forKeyedSubscript:@"needsReenroll"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[OTEscrowCheckCallResult octagonTrusted](self, "octagonTrusted")}];
  [v3 setObject:v5 forKeyedSubscript:@"octagonTrusted"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[OTEscrowCheckCallResult secureTermsNeeded](self, "secureTermsNeeded")}];
  [v3 setObject:v6 forKeyedSubscript:@"secureTermsNeeded"];

  moveRequest = [(OTEscrowCheckCallResult *)self moveRequest];

  if (moveRequest)
  {
    moveRequest2 = [(OTEscrowCheckCallResult *)self moveRequest];
    dictionaryRepresentation = [moveRequest2 dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"moveRequest"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[OTEscrowCheckCallResult repairReason](self, "repairReason")}];
  [v3 setObject:v10 forKeyedSubscript:@"repairReason"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[OTEscrowCheckCallResult repairDisabled](self, "repairDisabled")}];
  [v3 setObject:v11 forKeyedSubscript:@"repairDisabled"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[OTEscrowCheckCallResult needsReenroll](self forKey:{"needsReenroll"), @"needsReenroll"}];
  [coderCopy encodeBool:-[OTEscrowCheckCallResult octagonTrusted](self forKey:{"octagonTrusted"), @"octagonTrusted"}];
  [coderCopy encodeBool:-[OTEscrowCheckCallResult secureTermsNeeded](self forKey:{"secureTermsNeeded"), @"secureTermsNeeded"}];
  moveRequest = [(OTEscrowCheckCallResult *)self moveRequest];
  [coderCopy encodeObject:moveRequest forKey:@"moveRequest"];

  [coderCopy encodeInteger:-[OTEscrowCheckCallResult repairReason](self forKey:{"repairReason"), @"repairReason"}];
  [coderCopy encodeBool:-[OTEscrowCheckCallResult repairDisabled](self forKey:{"repairDisabled"), @"repairDisabled"}];
}

- (OTEscrowCheckCallResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = OTEscrowCheckCallResult;
  v5 = [(OTEscrowCheckCallResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moveRequest"];
    moveRequest = v5->_moveRequest;
    v5->_moveRequest = v6;

    v5->_needsReenroll = [coderCopy decodeBoolForKey:@"needsReenroll"];
    v5->_octagonTrusted = [coderCopy decodeBoolForKey:@"octagonTrusted"];
    v5->_secureTermsNeeded = [coderCopy decodeBoolForKey:@"secureTermsNeeded"];
    v5->_repairReason = [coderCopy decodeIntegerForKey:@"repairReason"];
    v5->_repairDisabled = [coderCopy decodeBoolForKey:@"repairDisabled"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(OTEscrowCheckCallResult *)self needsReenroll])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if ([(OTEscrowCheckCallResult *)self octagonTrusted])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(OTEscrowCheckCallResult *)self secureTermsNeeded])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  moveRequest = [(OTEscrowCheckCallResult *)self moveRequest];
  repairReason = [(OTEscrowCheckCallResult *)self repairReason];
  if ([(OTEscrowCheckCallResult *)self repairDisabled])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<OTEscrowCheckCallResult: needsReenroll: %@, octagonTrusted: %@, moveRequest? %@, secureTermsNeeded? %@, repairReason: %ld, repairDisabled: %@>", v4, v5, v6, moveRequest, repairReason, v9];

  return v10;
}

@end