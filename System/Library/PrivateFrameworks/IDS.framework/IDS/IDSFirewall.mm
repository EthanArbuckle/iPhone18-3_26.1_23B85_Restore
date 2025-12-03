@interface IDSFirewall
- (IDSFirewall)initWithService:(id)service queue:(id)queue;
- (id)_removeInvalidEntries:(id)entries;
- (id)description;
- (void)currentDonatedEntries:(id)entries;
- (void)currentEntries:(id)entries;
- (void)donateEntries:(id)entries withCompletion:(id)completion;
- (void)populateImpactedServices:(id)services;
- (void)recentlyBlockedEntries:(id)entries;
- (void)removeAllDonatedEntries:(id)entries;
- (void)removeAllEntries:(id)entries;
- (void)removeDonatedEntries:(id)entries withCompletion:(id)completion;
- (void)removeEntries:(id)entries withCompletion:(id)completion;
- (void)replaceAllEntriesWithEntries:(id)entries withCompletion:(id)completion;
- (void)replaceDonatedEntriesWithEntries:(id)entries withCompletion:(id)completion;
- (void)setQueue:(id)queue;
@end

@implementation IDSFirewall

- (IDSFirewall)initWithService:(id)service queue:(id)queue
{
  serviceCopy = service;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = IDSFirewall;
  v8 = [(IDSFirewall *)&v15 init];
  if (v8)
  {
    v9 = +[IDSInternalQueueController sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4C28C;
    v11[3] = &unk_1E743E620;
    v12 = v8;
    v13 = serviceCopy;
    v14 = queueCopy;
    [v9 performBlock:v11 waitUntilDone:1];
  }

  return v8;
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A4C414;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  [v5 performBlock:v7 waitUntilDone:1];
}

- (void)populateImpactedServices:(id)services
{
  v19 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  if (!servicesCopy)
  {
    sub_195B2A7C8(a2, self);
  }

  queue = self->_queue;
  v7 = +[IDSLogging IDSService];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v8)
    {
      service = self->_service;
      *buf = 138412290;
      v18 = service;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "IDSFirewall populateImpactedServices for service %@", buf, 0xCu);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_195A4C61C;
    v15[3] = &unk_1E743F368;
    v15[4] = self;
    v16 = servicesCopy;
    v10 = MEMORY[0x19A8BBEF0](v15);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4C768;
    v13[3] = &unk_1E743F8A0;
    v13[4] = self;
    v14 = v10;
    v11 = v10;
    [IDSXPCDaemonController performDaemonControllerTask:v13];
  }

  else
  {
    if (v8)
    {
      *buf = 136315138;
      v18 = "[IDSFirewall populateImpactedServices:]";
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)donateEntries:(id)entries withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v25 = service;
      v26 = 2112;
      v27 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ donateEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_195A4CC98;
      v18[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v19 = entriesCopy;
      selfCopy = self;
      v21 = completionCopy;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4CE04;
      v16[3] = &unk_1E743F138;
      v16[4] = self;
      v17 = v21;
      sub_195A4CBB0(v13, v18, v16);

      v9 = v19;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4CB9C;
      block[3] = &unk_1E743E850;
      v23 = completionCopy;
      dispatch_async(v14, block);
      v9 = v23;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v25 = "[IDSFirewall donateEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeDonatedEntries:(id)entries withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v25 = service;
      v26 = 2112;
      v27 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeDonatedEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_195A4D17C;
      v18[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v19 = entriesCopy;
      selfCopy = self;
      v21 = completionCopy;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4D2E8;
      v16[3] = &unk_1E743F138;
      v16[4] = self;
      v17 = v21;
      sub_195A4CBB0(v13, v18, v16);

      v9 = v19;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4D168;
      block[3] = &unk_1E743E850;
      v23 = completionCopy;
      dispatch_async(v14, block);
      v9 = v23;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v25 = "[IDSFirewall removeDonatedEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeEntries:(id)entries withCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v25 = service;
      v26 = 2112;
      v27 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_195A4D660;
      v18[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v19 = entriesCopy;
      selfCopy = self;
      v21 = completionCopy;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_195A4D7CC;
      v16[3] = &unk_1E743F138;
      v16[4] = self;
      v17 = v21;
      sub_195A4CBB0(v13, v18, v16);

      v9 = v19;
    }

    else
    {
      v14 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A4D64C;
      block[3] = &unk_1E743E850;
      v23 = completionCopy;
      dispatch_async(v14, block);
      v9 = v23;
      entriesCopy = v12;
    }
  }

  else if (v10)
  {
    *buf = 136315138;
    v25 = "[IDSFirewall removeEntries:withCompletion:]";
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)replaceDonatedEntriesWithEntries:(id)entries withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v22 = service;
      v23 = 2112;
      v24 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ replaceDonatedEntriesWithEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_195A4DAD8;
      v17[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v18 = entriesCopy;
      selfCopy = self;
      v20 = completionCopy;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_195A4DC48;
      v15[3] = &unk_1E743F138;
      v15[4] = self;
      v16 = v20;
      sub_195A4CBB0(v13, v17, v15);
    }

    else
    {
      [(IDSFirewall *)self removeAllDonatedEntries:completionCopy];
      entriesCopy = v12;
    }
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v22 = "[IDSFirewall replaceDonatedEntriesWithEntries:withCompletion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)replaceAllEntriesWithEntries:(id)entries withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  completionCopy = completion;
  queue = self->_queue;
  v9 = +[IDSLogging IDSService];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v10)
    {
      service = self->_service;
      *buf = 138412546;
      v22 = service;
      v23 = 2112;
      v24 = entriesCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ replaceAllEntriesWithEntries %@", buf, 0x16u);
    }

    v12 = [(IDSFirewall *)self _removeInvalidEntries:entriesCopy];

    if ([v12 count])
    {
      v13 = self->_service;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_195A4DF50;
      v17[3] = &unk_1E743FE38;
      entriesCopy = v12;
      v18 = entriesCopy;
      selfCopy = self;
      v20 = completionCopy;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_195A4E0C0;
      v15[3] = &unk_1E743F138;
      v15[4] = self;
      v16 = v20;
      sub_195A4CBB0(v13, v17, v15);
    }

    else
    {
      [(IDSFirewall *)self removeAllEntries:completionCopy];
      entriesCopy = v12;
    }
  }

  else
  {
    if (v10)
    {
      *buf = 136315138;
      v22 = "[IDSFirewall replaceAllEntriesWithEntries:withCompletion:]";
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)currentDonatedEntries:(id)entries
{
  v17 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v16 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall currentEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4E43C;
    v13[3] = &unk_1E743FE88;
    v13[4] = self;
    v14 = entriesCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4E5C4;
    v11[3] = &unk_1E743FE60;
    v11[4] = self;
    v12 = v14;
    sub_195A4E354(v9, v13, v11);

    v6 = v14;
  }

  else if (v7)
  {
    *buf = 136315138;
    v16 = "[IDSFirewall currentDonatedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)currentEntries:(id)entries
{
  v17 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v16 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall currentEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4E884;
    v13[3] = &unk_1E743FE88;
    v13[4] = self;
    v14 = entriesCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4EA0C;
    v11[3] = &unk_1E743FE60;
    v11[4] = self;
    v12 = v14;
    sub_195A4E354(v9, v13, v11);

    v6 = v14;
  }

  else if (v7)
  {
    *buf = 136315138;
    v16 = "[IDSFirewall currentEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeAllDonatedEntries:(id)entries
{
  v17 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v16 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeAllDonatedEntries", buf, 0xCu);
    }

    v9 = self->_service;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4ECCC;
    v13[3] = &unk_1E743FE88;
    v13[4] = self;
    v14 = entriesCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4EE28;
    v11[3] = &unk_1E743F138;
    v11[4] = self;
    v12 = v14;
    sub_195A4CBB0(v9, v13, v11);

    v6 = v14;
  }

  else if (v7)
  {
    *buf = 136315138;
    v16 = "[IDSFirewall removeAllDonatedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeAllEntries:(id)entries
{
  v17 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v16 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall update for service %@ removeAllEntries", buf, 0xCu);
    }

    v9 = self->_service;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4F0BC;
    v13[3] = &unk_1E743FE88;
    v13[4] = self;
    v14 = entriesCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4F218;
    v11[3] = &unk_1E743F138;
    v11[4] = self;
    v12 = v14;
    sub_195A4CBB0(v9, v13, v11);

    v6 = v14;
  }

  else if (v7)
  {
    *buf = 136315138;
    v16 = "[IDSFirewall removeAllEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)recentlyBlockedEntries:(id)entries
{
  v17 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  queue = self->_queue;
  v6 = +[IDSLogging IDSService];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (queue)
  {
    if (v7)
    {
      service = self->_service;
      *buf = 138412290;
      v16 = service;
      _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall recentlyBlockedEntries for service %@", buf, 0xCu);
    }

    v9 = self->_service;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_195A4F4AC;
    v13[3] = &unk_1E743FE88;
    v13[4] = self;
    v14 = entriesCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A4F634;
    v11[3] = &unk_1E743FE60;
    v11[4] = self;
    v12 = v14;
    sub_195A4E354(v9, v13, v11);

    v6 = v14;
  }

  else if (v7)
  {
    *buf = 136315138;
    v16 = "[IDSFirewall recentlyBlockedEntries:]";
    _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "IDSFirewall - assert valid queue failed in %s", buf, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  service = [(IDSFirewall *)self service];
  queue = [(IDSFirewall *)self queue];
  impactedServiceIdentifiers = [(IDSFirewall *)self impactedServiceIdentifiers];
  v7 = [v3 stringWithFormat:@"<IDSFirewall %p>: Service %@ Queue %@ ImpactedServices %@", self, service, queue, impactedServiceIdentifiers];

  return v7;
}

- (id)_removeInvalidEntries:(id)entries
{
  v23 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = entriesCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 uri];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 uri];
          prefixedURI = [v13 prefixedURI];

          if (prefixedURI)
          {
            [v4 addObject:v10];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end