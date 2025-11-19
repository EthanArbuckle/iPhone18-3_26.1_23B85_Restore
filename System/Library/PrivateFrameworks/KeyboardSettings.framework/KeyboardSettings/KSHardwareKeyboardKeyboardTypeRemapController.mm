@interface KSHardwareKeyboardKeyboardTypeRemapController
- (id)keyboardTypeSectionSpecifiers;
- (id)keyboardsSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)loadKeyboards;
- (void)reloadSpecifiersWithAnimation;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation KSHardwareKeyboardKeyboardTypeRemapController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  [(KSHardwareKeyboardKeyboardTypeRemapController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  [(KSHardwareKeyboardKeyboardTypeRemapController *)&v2 viewDidLoad];
}

- (void)reloadSpecifiersWithAnimation
{
  v4 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self specifiers];
  v3 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self newSpecifiers];
  -[KSHardwareKeyboardKeyboardTypeRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [v4 count], v3);
}

- (void)loadKeyboards
{
  v71[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v2 = self;
  if (!self->_eventSystemClient)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = IOHIDEventSystemClientCreateWithType();
    self->_eventSystemClient = v4;
    if (v4)
    {
      CFRunLoopGetCurrent();
      v5 = *MEMORY[0x277CBF058];
      IOHIDEventSystemClientScheduleWithRunLoop();
      v70[0] = @"DeviceUsagePage";
      v70[1] = @"DeviceUsage";
      v71[0] = &unk_2867A4E18;
      v71[1] = &unk_2867A4E30;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
      eventSystemClient = self->_eventSystemClient;
      IOHIDEventSystemClientSetMatching();
      v8 = self->_eventSystemClient;
      v61 = MEMORY[0x277D85DD0];
      v62 = 3221225472;
      v63 = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke;
      v64 = &unk_2797F9EF0;
      objc_copyWeak(&v65, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v65);

      v2 = self;
    }
  }

  v36 = [MEMORY[0x277CBEB18] array];
  v9 = IOHIDEventSystemClientCopyServices(v2->_eventSystemClient);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v9;
  v39 = [(__CFArray *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v39)
  {
    v38 = *v58;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v58 != v38)
        {
          objc_enumerationMutation(obj);
        }

        service = *(*(&v57 + 1) + 8 * i);
        v42 = IOHIDServiceClientCopyProperty(service, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v10 = v42;
          v11 = [v10 countByEnumeratingWithState:&v53 objects:v68 count:16];
          if (v11)
          {
            v12 = *v54;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v54 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v53 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = [v14 objectForKey:@"DeviceUsagePage"];
                  v16 = [v14 objectForKey:@"DeviceUsage"];
                  if ([v15 isEqual:&unk_2867A4E18] && objc_msgSend(v16, "isEqual:", &unk_2867A4E30))
                  {
                    v17 = IOHIDServiceClientGetRegistryID(service);
                    [v17 unsignedLongLongValue];
                    if ((BKSHIDKeyboardWantsStandardTypeOverride() & 1) != 0 || CFPreferencesGetAppBooleanValue(@"KeyboardTypeCustomization", @"com.apple.keyboard.preferences", 0))
                    {
                      [(NSMutableArray *)v36 addObject:service];
                    }

                    v48 = MEMORY[0x277D85DD0];
                    v49 = 3221225472;
                    v50 = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_3;
                    v51 = &unk_2797F9EF0;
                    objc_copyWeak(&v52, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v52);

                    goto LABEL_26;
                  }
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v53 objects:v68 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_26:
        }
      }

      v39 = [(__CFArray *)obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v39);
  }

  v18 = self;
  if ([(NSMutableArray *)v36 count])
  {
    if (!self->_currentKeyboard || ([(NSMutableArray *)v36 containsObject:?]& 1) == 0)
    {
      v43 = BKSHIDKeyboardGetDeviceProperties();
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19 = v36;
      v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v67 count:16];
      if (v20)
      {
        v21 = *v45;
        while (2)
        {
          for (k = 0; k != v20; ++k)
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v44 + 1) + 8 * k);
            v24 = IOHIDServiceClientCopyProperty(v23, @"StandardType");
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [v43 standardType];
              if (v25 == [v24 intValue])
              {
                self->_currentKeyboard = v23;

                goto LABEL_46;
              }
            }
          }

          v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v67 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_46:

      if (self->_currentKeyboard)
      {
        goto LABEL_49;
      }

      v31 = [(NSMutableArray *)v19 firstObject];
      self->_currentKeyboard = v31;
LABEL_48:

LABEL_49:
      v18 = self;
    }
  }

  else
  {
    self->_currentKeyboard = 0;
    v26 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
    v27 = [v26 viewControllers];
    v28 = [v27 indexOfObject:self];

    v18 = self;
    if (v28 && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
      v30 = [v29 viewControllers];
      v43 = [v30 objectAtIndex:v28 - 1];

      v31 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self navigationController];
      v32 = [(__IOHIDServiceClient *)v31 popToViewController:v43 animated:1];
      goto LABEL_48;
    }
  }

  keyboards = v18->_keyboards;
  v18->_keyboards = v36;

  objc_destroyWeak(&location);
  v34 = *MEMORY[0x277D85DE8];
}

void __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_2;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__KSHardwareKeyboardKeyboardTypeRemapController_loadKeyboards__block_invoke_4;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)newSpecifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  keyboards = self->_keyboards;
  if (!keyboards)
  {
    [(KSHardwareKeyboardKeyboardTypeRemapController *)self loadKeyboards];
    keyboards = self->_keyboards;
  }

  if ([(NSMutableArray *)keyboards count])
  {
    v5 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:v5];

    v6 = [(KSHardwareKeyboardKeyboardTypeRemapController *)self keyboardTypeSectionSpecifiers];
    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

- (id)keyboardsSectionSpecifiers
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableArray *)self->_keyboards count]< 2)
  {
    self->_keysSectionStart = 0;
  }

  else
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"SELECT_KEYBOARD" value:&stru_28679E3A8 table:@"Keyboard"];
    v7 = [v4 groupSpecifierWithName:v6];

    [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    v43 = v3;
    v38 = v7;
    [v3 addObject:v7];
    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v8 = self->_keyboards;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v49;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v49 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = IOHIDServiceClientCopyProperty(*(*(&v48 + 1) + 8 * i), @"Product");
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v42 objectForKey:v13];
            v15 = [v14 integerValue];

            v16 = [MEMORY[0x277CCABB0] numberWithInteger:v15 + 1];
            [v42 setObject:v16 forKey:v13];
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v10);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = self->_keyboards;
    v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *MEMORY[0x277D3FFB8];
      v40 = *MEMORY[0x277D3FFB8];
      v41 = *v45;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v45 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v44 + 1) + 8 * j);
          v23 = IOHIDServiceClientCopyProperty(v22, @"Product");
          v24 = IOHIDServiceClientCopyProperty(v22, @"ProductID");
          v25 = IOHIDServiceClientCopyProperty(v22, @"Transport");
          v26 = v23;
          objc_opt_class();
          v27 = v26;
          if (objc_opt_isKindOfClass())
          {
            v28 = [v42 objectForKey:v26];
            v29 = [v28 integerValue];

            v27 = v26;
            if (v29 >= 2)
            {
              v30 = @"%@ (Smart Connector)";
              if ([v25 isEqual:@"AID"] & 1) != 0 || (v30 = @"%@ (Bluetooth)", (objc_msgSend(v25, "isEqual:", @"Bluetooth")) || (v30 = @"%@ (USB)", v27 = v26, objc_msgSend(v25, "isEqual:", @"USB")))
              {
                v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v32 = [v31 localizedStringForKey:v30 value:&stru_28679E3A8 table:@"Keyboard"];

                v27 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v32, v26];
              }
            }
          }

          if (self->_currentKeyboard)
          {
            v33 = v19 == [(NSMutableArray *)self->_keyboards indexOfObject:?];
          }

          else
          {
            v33 = 0;
          }

          v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", v26, v24, v33];
          v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v35 setProperty:v34 forKey:v40];
          [v43 addObject:v35];
          ++v19;
        }

        v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v18);
    }

    self->_keysSectionStart = 1;
    v3 = v43;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)keyboardTypeSectionSpecifiers
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_currentKeyboard)
  {
    v16 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keys"];
    [v3 addObject:?];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [&unk_2867A4B90 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      v7 = *MEMORY[0x277D3FFB8];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(&unk_2867A4B90);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = MEMORY[0x277D3FAD8];
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:v9 value:&stru_28679E3A8 table:@"Keyboard"];
          v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v13 setProperty:v9 forKey:v7];
          [v3 addObject:v13];
        }

        v5 = [&unk_2867A4B90 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = KSHardwareKeyboardKeyboardTypeRemapController;
  v7 = [(KSHardwareKeyboardKeyboardTypeRemapController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  if ([v6 section] == self->_keysSectionStart - 1)
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(v6, "row")}];
    }
  }

  else if ([v6 section] == self->_keysSectionStart)
  {
    v8 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v8 unsignedLongLongValue];
    v9 = BKSHIDKeyboardGetDeviceProperties();
    v10 = [v9 standardType];
    if (v10 == -1)
    {
      v10 = 2 * ([v9 countryCode] == 15);
    }

    [v7 setChecked:{objc_msgSend(v6, "row") == v10}];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 section];
  v8 = self->_keysSectionStart - 1;
  v9 = [v6 row];
  if (v7 == v8)
  {
    if (v9 < [(NSMutableArray *)self->_keyboards count])
    {
      v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [v6 row]);
      self->_currentKeyboard = v10;

      [(KSHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
      [v12 deselectRowAtIndexPath:v6 animated:1];
    }
  }

  else
  {
    v11 = IOHIDServiceClientGetRegistryID(self->_currentKeyboard);
    [v11 unsignedLongLongValue];
    BKSHIDServicesSetStandardType();
    [(KSHardwareKeyboardKeyboardTypeRemapController *)self reloadSpecifiers];
    [v12 deselectRowAtIndexPath:v6 animated:1];
  }
}

@end