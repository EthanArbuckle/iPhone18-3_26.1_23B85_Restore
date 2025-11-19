@interface SGSuggestions
- (SGSuggestions)initWithCoder:(id)a3;
- (SGSuggestions)initWithContacts:(id)a3 events:(id)a4 reminders:(id)a5 walletOrders:(id)a6 walletPasses:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SGSuggestions

- (void)encodeWithCoder:(id)a3
{
  contacts = self->_contacts;
  v5 = a3;
  [v5 encodeObject:contacts forKey:@"contacts"];
  [v5 encodeObject:self->_events forKey:@"events"];
  [v5 encodeObject:self->_reminders forKey:@"reminders"];
  [v5 encodeObject:self->_walletOrders forKey:@"walletOrders"];
  [v5 encodeObject:self->_walletPasses forKey:@"walletPasses"];
}

- (SGSuggestions)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SGSuggestions;
  v5 = [(SGSuggestions *)&v32 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"contacts"];
    contacts = v5->_contacts;
    v5->_contacts = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"events"];
    events = v5->_events;
    v5->_events = v14;

    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"reminders"];
    reminders = v5->_reminders;
    v5->_reminders = v19;

    v21 = objc_alloc(MEMORY[0x1E695DFD8]);
    v22 = objc_opt_class();
    v23 = [v21 initWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"walletOrders"];
    walletOrders = v5->_walletOrders;
    v5->_walletOrders = v24;

    v26 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27 = objc_opt_class();
    v28 = [v26 initWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"walletPasses"];
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

- (SGSuggestions)initWithContacts:(id)a3 events:(id)a4 reminders:(id)a5 walletOrders:(id)a6 walletPasses:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SGSuggestions;
  v17 = [(SGSuggestions *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_contacts, a3);
    objc_storeStrong(&v18->_events, a4);
    objc_storeStrong(&v18->_reminders, a5);
    objc_storeStrong(&v18->_walletOrders, a6);
    objc_storeStrong(&v18->_walletPasses, a7);
  }

  return v18;
}

@end