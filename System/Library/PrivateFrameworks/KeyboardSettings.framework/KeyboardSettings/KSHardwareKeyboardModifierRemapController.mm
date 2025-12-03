@interface KSHardwareKeyboardModifierRemapController
- (id)keyboardsSectionSpecifiers;
- (id)keysSectionSpecifiers;
- (id)newSpecifiers;
- (id)specifiers;
- (id)subtitleForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)valueForRemappingKey:(id)key;
- (void)dealloc;
- (void)loadKeyboards;
- (void)loadRemapping;
- (void)reloadSpecifiersWithAnimation;
- (void)resetRemapping;
- (void)saveRemapping;
- (void)setRemappingFromKey:(id)key toValue:(id)value;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation KSHardwareKeyboardModifierRemapController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    newSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self newSpecifiers];
    v6 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = newSpecifiers;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)subtitleForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:*MEMORY[0x277D3FFB8]];
  v5 = [(KSHardwareKeyboardModifierRemapController *)self valueForRemappingKey:v4];
  v6 = attributedTitleForKey(v5, self->_currentKeyboard, 0, 1);

  return v6;
}

- (void)dealloc
{
  eventSystemClient = self->_eventSystemClient;
  if (eventSystemClient)
  {
    CFRelease(eventSystemClient);
  }

  v4.receiver = self;
  v4.super_class = KSHardwareKeyboardModifierRemapController;
  [(KSHardwareKeyboardModifierRemapController *)&v4 dealloc];
}

- (void)reloadSpecifiersWithAnimation
{
  specifiers = [(KSHardwareKeyboardModifierRemapController *)self specifiers];
  newSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self newSpecifiers];
  -[KSHardwareKeyboardModifierRemapController updateSpecifiersInRange:withSpecifiers:](self, "updateSpecifiersInRange:withSpecifiers:", 0, [specifiers count], newSpecifiers);
}

- (void)loadKeyboards
{
  v55[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  selfCopy2 = self;
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
      v54[0] = @"DeviceUsagePage";
      v54[1] = @"DeviceUsage";
      v55[0] = &unk_2867A4E90;
      v55[1] = &unk_2867A4EA8;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
      eventSystemClient = self->_eventSystemClient;
      IOHIDEventSystemClientSetMatching();
      v8 = self->_eventSystemClient;
      v46 = MEMORY[0x277D85DD0];
      v47 = 3221225472;
      v48 = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke;
      v49 = &unk_2797F9EF0;
      objc_copyWeak(&v50, &location);
      IOHIDEventSystemClientRegisterDeviceMatchingBlock();
      objc_destroyWeak(&v50);

      selfCopy2 = self;
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  v9 = IOHIDEventSystemClientCopyServices(selfCopy2->_eventSystemClient);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v9;
  v33 = [(__CFArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v33)
  {
    v32 = *v43;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v36 = IOHIDServiceClientCopyProperty(v10, @"DeviceUsagePairs");
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v10;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v11 = v36;
          v12 = [v11 countByEnumeratingWithState:&v38 objects:v52 count:16];
          if (v12)
          {
            v13 = *v39;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v39 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = *(*(&v38 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = [v15 objectForKey:@"DeviceUsagePage"];
                  v17 = [v15 objectForKey:@"DeviceUsage"];
                  if ([v16 isEqual:&unk_2867A4E90] && objc_msgSend(v17, "isEqual:", &unk_2867A4EA8))
                  {
                    [array addObject:v34];
                    objc_copyWeak(&v37, &location);
                    IOHIDServiceClientRegisterRemovalBlock();
                    objc_destroyWeak(&v37);

                    goto LABEL_23;
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v38 objects:v52 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:
        }
      }

      v33 = [(__CFArray *)obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v33);
  }

  if ([array count])
  {
    if (!v29[185] || ([array containsObject:?] & 1) == 0)
    {
      firstObject = [array firstObject];
      v29[185] = firstObject;
LABEL_33:
    }
  }

  else
  {
    v29[185] = 0;
    navigationController = [v29 navigationController];
    viewControllers = [navigationController viewControllers];
    v21 = [viewControllers indexOfObject:v29];

    if (v21 && v21 != 0x7FFFFFFFFFFFFFFFLL)
    {
      navigationController2 = [v29 navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      firstObject = [viewControllers2 objectAtIndex:v21 - 1];

      navigationController3 = [v29 navigationController];
      v25 = [navigationController3 popToViewController:firstObject animated:1];

      goto LABEL_33;
    }
  }

  v26 = v29[183];
  v29[183] = array;

  objc_destroyWeak(&location);
  v27 = *MEMORY[0x277D85DE8];
}

void __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_2;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__KSHardwareKeyboardModifierRemapController_loadKeyboards__block_invoke_4;
    block[3] = &unk_2797F9EC8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)resetRemapping
{
  [(NSMutableDictionary *)self->_remapping removeAllObjects];
  [(KSHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (void)loadRemapping
{
  v26 = *MEMORY[0x277D85DE8];
  if (initializeDictionaries_onceToken != -1)
  {
    [KSHardwareKeyboardModifierRemapController loadRemapping];
  }

  [(KSHardwareKeyboardModifierRemapController *)self loadKeyboards];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  remapping = self->_remapping;
  self->_remapping = dictionary;

  currentKeyboard = self->_currentKeyboard;
  if (currentKeyboard)
  {
    v5 = IOHIDServiceClientCopyProperty(currentKeyboard, @"HIDKeyboardModifierMappingPairs");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v22;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v22 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = _keyCodeToKey;
              v13 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingSrc"];
              v14 = [v12 objectForKeyedSubscript:v13];

              v15 = _keyCodeToKey;
              v16 = [v11 objectForKeyedSubscript:@"HIDKeyboardModifierMappingDst"];
              v17 = [v15 objectForKeyedSubscript:v16];

              if (v14)
              {
                v18 = v17 == 0;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(NSMutableDictionary *)self->_remapping setObject:v17 forKeyedSubscript:v14];
                  }
                }
              }
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v8);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)saveRemapping
{
  v71 = *MEMORY[0x277D85DE8];
  if (self->_currentKeyboard)
  {
    selfCopy = self;
    array = [MEMORY[0x277CBEB18] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = selfCopy->_remapping;
    v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v64;
      v6 = @"HIDKeyboardModifierMappingSrc";
      v7 = @"HIDKeyboardModifierMappingDst";
      v8 = 0x277CBE000uLL;
      v49 = selfCopy;
      v46 = *v64;
      do
      {
        v9 = 0;
        v51 = v4;
        do
        {
          if (*v64 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v63 + 1) + 8 * v9);
          v11 = [(NSMutableDictionary *)selfCopy->_remapping objectForKeyedSubscript:v10];
          if (([v10 isEqualToString:v11] & 1) == 0)
          {
            v57 = v9;
            v12 = [_keyToKeyCode objectForKeyedSubscript:v10];
            property = v11;
            v13 = [_keyToKeyCode objectForKeyedSubscript:v11];
            v14 = v8;
            v15 = v7;
            v16 = v6;
            if ([v12 count])
            {
              v17 = 0;
              do
              {
                v18 = [v12 objectAtIndexedSubscript:v17];
                v19 = [v13 count];
                if (v17 >= v19 - 1)
                {
                  v20 = v19 - 1;
                }

                else
                {
                  v20 = v17;
                }

                v21 = [v13 objectAtIndexedSubscript:v20];
                v68[0] = v16;
                v68[1] = v15;
                v69[0] = v18;
                v69[1] = v21;
                v22 = [*(v14 + 2752) dictionaryWithObjects:v69 forKeys:v68 count:2];
                [array addObject:v22];

                ++v17;
              }

              while (v17 < [v12 count]);
            }

            selfCopy = v49;
            v5 = v46;
            v4 = v51;
            v6 = v16;
            v7 = v15;
            v8 = v14;
            v11 = property;
            v9 = v57;
          }

          v9 = v9 + 1;
        }

        while (v9 != v4);
        v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v4);
    }

    v23 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"ProductID");
    v24 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"VendorID");
    v25 = IOHIDServiceClientCopyProperty(selfCopy->_currentKeyboard, @"HIDVirtualDevice");
    v26 = BKSHIDServicesProductIdentifierFromServiceProperties();
    v27 = v26;
    if (v26)
    {
      v48 = v25;
      v52 = v24;
      obja = v23;
      v28 = v26;
      v29 = array;
      v30 = *MEMORY[0x277CF05A8];
      v31 = CFPreferencesCopyAppValue(*MEMORY[0x277CF05A8], @"com.apple.keyboard.preferences");
      if (v31)
      {
        v32 = v31;
        dictionary = [v31 mutableCopy];
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
      }

      v47 = v27;
      if ([v29 count])
      {
        [dictionary setObject:v29 forKeyedSubscript:v28];
      }

      else
      {
        [dictionary removeObjectForKey:v28];
      }

      v35 = [dictionary copy];

      CFPreferencesSetAppValue(v30, v35, @"com.apple.keyboard.preferences");
      propertya = v29;

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v58 = selfCopy->_keyboards;
      v36 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v60;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v60 != v38)
            {
              objc_enumerationMutation(v58);
            }

            v40 = *(*(&v59 + 1) + 8 * i);
            v41 = IOHIDServiceClientCopyProperty(v40, @"ProductID");
            v42 = IOHIDServiceClientCopyProperty(v40, @"VendorID");
            v43 = IOHIDServiceClientCopyProperty(v40, @"HIDVirtualDevice");
            v44 = BKSHIDServicesProductIdentifierFromServiceProperties();
            if ([v28 isEqual:v44] && !IOHIDServiceClientSetProperty(v40, @"HIDKeyboardModifierMappingPairs", propertya))
            {
              NSLog(&cfstr_ErrorCanNotSav.isa);
            }
          }

          v37 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v37);
      }

      v34 = array;
      v24 = v52;
      v23 = obja;
      v27 = v47;
      v25 = v48;
    }

    else
    {
      NSLog(&cfstr_CanNotSaveRema.isa);
      v34 = array;
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)valueForRemappingKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_remapping objectForKeyedSubscript:keyCopy];
  if (!v5)
  {
    v5 = keyCopy;
  }

  return v5;
}

- (void)setRemappingFromKey:(id)key toValue:(id)value
{
  [(NSMutableDictionary *)self->_remapping setObject:value forKeyedSubscript:key];
  [(KSHardwareKeyboardModifierRemapController *)self saveRemapping];

  [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
}

- (id)newSpecifiers
{
  [(KSHardwareKeyboardModifierRemapController *)self loadRemapping];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(NSMutableArray *)self->_keyboards count])
  {
    keyboardsSectionSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self keyboardsSectionSpecifiers];
    [v3 addObjectsFromArray:keyboardsSectionSpecifiers];

    keysSectionSpecifiers = [(KSHardwareKeyboardModifierRemapController *)self keysSectionSpecifiers];
    [v3 addObjectsFromArray:keysSectionSpecifiers];

    v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Restore Defaults"];
    [v3 addObject:v6];
    v7 = MEMORY[0x277D3FAD8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"MODIFIER_KEYS_RESTORE_DEFAULTS" value:&stru_28679E3A8 table:@"Keyboard"];
    v10 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v10 setButtonAction:sel_resetRemapping];
    [v3 addObject:v10];
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
            integerValue = [v14 integerValue];

            v16 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
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
            integerValue2 = [v28 integerValue];

            v27 = v26;
            if (integerValue2 >= 2)
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
          v35 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:objc_opt_class() cell:3 edit:0];
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

- (id)keysSectionSpecifiers
{
  v51 = *MEMORY[0x277D85DE8];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_currentKeyboard)
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"Keys"];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"MODIFIER_KEYS_FOOTER_TEXT" value:&stru_28679E3A8 table:@"Keyboard"];
    [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];

    v38 = v3;
    [v40 addObject:v3];
    currentKeyboard = self->_currentKeyboard;
    v7 = [MEMORY[0x277CBEB58] set];
    if (currentKeyboard)
    {
      v8 = IOHIDServiceClientCopyProperty(currentKeyboard, @"Keyboard");
      v9 = 0x277CBE000uLL;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v8 objectForKeyedSubscript:@"Elements"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = v10;
          v37 = v8;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v46;
            v39 = v11;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v46 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v45 + 1) + 8 * i);
                v17 = *(v9 + 2752);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = [v16 objectForKeyedSubscript:@"Usage"];
                  v19 = [v16 objectForKeyedSubscript:@"UsagePage"];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v20 = v9;
                      unsignedLongLongValue = [v18 unsignedLongLongValue];
                      v22 = unsignedLongLongValue | ([v19 unsignedLongLongValue] << 32);
                      v23 = _keyCodeToKey;
                      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v22];
                      v25 = [v23 objectForKeyedSubscript:v24];

                      if (v25)
                      {
                        [v7 addObject:v25];
                      }

                      v9 = v20;
                      v11 = v39;
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
            }

            while (v13);
          }

          v10 = v36;
          v8 = v37;
        }
      }
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = _srcKeys;
    v27 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v42;
      v30 = *MEMORY[0x277D3FFB8];
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v41 + 1) + 8 * j);
          if ([v7 containsObject:v32])
          {
            v33 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            [v33 setProperty:v32 forKey:v30];
            [v40 addObject:v33];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v28);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = KSHardwareKeyboardModifierRemapController;
  v7 = [(KSHardwareKeyboardModifierRemapController *)&v15 tableView:view cellForRowAtIndexPath:pathCopy];
  if ([pathCopy section] == self->_keysSectionStart - 1)
  {
    if (self->_currentKeyboard)
    {
      [v7 setChecked:{-[NSMutableArray indexOfObject:](self->_keyboards, "indexOfObject:") == objc_msgSend(pathCopy, "row")}];
    }
  }

  else if ([pathCopy section] == self->_keysSectionStart)
  {
    v8 = [(KSHardwareKeyboardModifierRemapController *)self specifierAtIndexPath:pathCopy];
    v9 = [v8 propertyForKey:*MEMORY[0x277D3FFB8]];
    v10 = attributedTitleForKey(v9, self->_currentKeyboard, @" Key", 1);
    titleLabel = [v7 titleLabel];
    [titleLabel setAttributedText:v10];

    v12 = [(KSHardwareKeyboardModifierRemapController *)self subtitleForSpecifier:v8];
    valueLabel = [v7 valueLabel];
    [valueLabel setAttributedText:v12];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == self->_keysSectionStart - 1)
  {
    v8 = [pathCopy row];
    if (v8 < [(NSMutableArray *)self->_keyboards count])
    {
      v9 = -[NSMutableArray objectAtIndexedSubscript:](self->_keyboards, "objectAtIndexedSubscript:", [pathCopy row]);
      self->_currentKeyboard = v9;

      [(KSHardwareKeyboardModifierRemapController *)self reloadSpecifiers];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = KSHardwareKeyboardModifierRemapController;
    [(KSHardwareKeyboardModifierRemapController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end