@interface IDSFirewallEntry
- (BOOL)isEqual:(id)equal;
- (IDSFirewallEntry)initWithCoder:(id)coder;
- (IDSFirewallEntry)initWithURI:(id)i andLastSeenDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSFirewallEntry

- (IDSFirewallEntry)initWithURI:(id)i andLastSeenDate:(id)date
{
  iCopy = i;
  dateCopy = date;
  if (iCopy)
  {
    v15.receiver = self;
    v15.super_class = IDSFirewallEntry;
    v9 = [(IDSFirewallEntry *)&v15 init];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_uri, i);
      if (dateCopy)
      {
        date = dateCopy;
      }

      else
      {
        date = [MEMORY[0x1E695DF00] date];
      }

      lastSeen = v10->_lastSeen;
      v10->_lastSeen = date;

      v10->_isDonated = 0;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IDSFirewallEntry *)self uri];
      v6 = [equalCopy uri];
      v7 = [v5 isEqual:v6];

      if (v7)
      {
        lastSeen = [(IDSFirewallEntry *)self lastSeen];
        lastSeen2 = [equalCopy lastSeen];
        v10 = [lastSeen isEqual:lastSeen2];

        if (v10)
        {
          mergeID = [(IDSFirewallEntry *)self mergeID];
          if (mergeID || ([equalCopy mergeID], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            mergeID2 = [(IDSFirewallEntry *)self mergeID];
            mergeID3 = [equalCopy mergeID];
            v14 = [mergeID2 isEqual:mergeID3];

            if (mergeID)
            {
LABEL_13:

              goto LABEL_9;
            }

            v15 = 0;
          }

          else
          {
            v14 = 1;
          }

          goto LABEL_13;
        }
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSFirewallEntry *)self uri];
  lastSeen = [(IDSFirewallEntry *)self lastSeen];
  if ([(IDSFirewallEntry *)self isDonated])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  mergeID = [(IDSFirewallEntry *)self mergeID];
  v8 = [v3 stringWithFormat:@"<IDSFirewallEntry %p>: uri %@ lastSeen %@ isDonated %@ mergeID %@", self, v4, lastSeen, v6, mergeID];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(IDSFirewallEntry *)self uri];
  lastSeen = [(IDSFirewallEntry *)self lastSeen];
  v7 = [v4 initWithURI:v5 andLastSeenDate:lastSeen];

  mergeID = [(IDSFirewallEntry *)self mergeID];
  [v7 setMergeID:mergeID];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(IDSFirewallEntry *)self uri];
  [coderCopy encodeObject:v4 forKey:@"firewall-uri"];

  lastSeen = [(IDSFirewallEntry *)self lastSeen];
  [coderCopy encodeObject:lastSeen forKey:@"firewall-lastseen"];

  mergeID = [(IDSFirewallEntry *)self mergeID];
  [coderCopy encodeObject:mergeID forKey:@"firewall-mergeid"];

  [coderCopy encodeBool:-[IDSFirewallEntry isDonated](self forKey:{"isDonated"), @"firewall-isdonated"}];
}

- (IDSFirewallEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firewall-uri"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firewall-lastseen"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firewall-mergeid"];
  v8 = [coderCopy decodeBoolForKey:@"firewall-isdonated"];

  v9 = [[IDSFirewallEntry alloc] initWithURI:v5 andLastSeenDate:v6];
  v10 = v9;
  if (v7)
  {
    [(IDSFirewallEntry *)v9 setMergeID:v7];
  }

  [(IDSFirewallEntry *)v10 setIsDonated:v8];

  return v10;
}

@end