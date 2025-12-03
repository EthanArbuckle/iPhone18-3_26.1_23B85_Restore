@interface SGSuggestions
- (SGSuggestions)initWithCoder:(id)coder;
- (SGSuggestions)initWithContacts:(id)contacts events:(id)events reminders:(id)reminders walletOrders:(id)orders walletPasses:(id)passes;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGSuggestions

- (void)encodeWithCoder:(id)coder
{
  contacts = self->_contacts;
  coderCopy = coder;
  [coderCopy encodeObject:contacts forKey:@"contacts"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
  [coderCopy encodeObject:self->_reminders forKey:@"reminders"];
  [coderCopy encodeObject:self->_walletOrders forKey:@"walletOrders"];
  [coderCopy encodeObject:self->_walletPasses forKey:@"walletPasses"];
}

- (SGSuggestions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = SGSuggestions;
  v5 = [(SGSuggestions *)&v32 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"contacts"];
    contacts = v5->_contacts;
    v5->_contacts = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"events"];
    events = v5->_events;
    v5->_events = v14;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"reminders"];
    reminders = v5->_reminders;
    v5->_reminders = v19;

    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22 = objc_opt_class();
    v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"walletOrders"];
    walletOrders = v5->_walletOrders;
    v5->_walletOrders = v24;

    v26 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27 = objc_opt_class();
    v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"walletPasses"];
    walletPasses = v5->_walletPasses;
    v5->_walletPasses = v29;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = *&self->_contacts;
  v5 = [v3 initWithFormat:@"[SGSuggestions\n\t - contacts:%@\n\t- events: %@\n\t- reminders:%@\n\t- orders:%@\n\t- passes: %@\n]", self->_contacts, self->_events, self->_reminders, self->_walletOrders, self->_walletPasses];

  return v5;
}

- (SGSuggestions)initWithContacts:(id)contacts events:(id)events reminders:(id)reminders walletOrders:(id)orders walletPasses:(id)passes
{
  contactsCopy = contacts;
  eventsCopy = events;
  remindersCopy = reminders;
  ordersCopy = orders;
  passesCopy = passes;
  v21.receiver = self;
  v21.super_class = SGSuggestions;
  v17 = [(SGSuggestions *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contacts, contacts);
    objc_storeStrong(&v18->_events, events);
    objc_storeStrong(&v18->_reminders, reminders);
    objc_storeStrong(&v18->_walletOrders, orders);
    objc_storeStrong(&v18->_walletPasses, passes);
  }

  return v18;
}

@end