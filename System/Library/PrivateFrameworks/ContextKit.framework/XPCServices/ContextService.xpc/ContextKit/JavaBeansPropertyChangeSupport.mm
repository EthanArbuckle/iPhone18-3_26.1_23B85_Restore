@interface JavaBeansPropertyChangeSupport
+ (void)initialize;
- (BOOL)hasListenersWithNSString:(id)a3;
- (id)getPropertyChangeListeners;
- (id)getPropertyChangeListenersWithNSString:(id)a3;
- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3;
- (void)addPropertyChangeListenerWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4;
- (void)dealloc;
- (void)fireIndexedPropertyChangeWithNSString:(id)a3 withInt:(int)a4 withId:(id)a5 withId:(id)a6;
- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)a3;
- (void)firePropertyChangeWithNSString:(id)a3 withBoolean:(BOOL)a4 withBoolean:(BOOL)a5;
- (void)firePropertyChangeWithNSString:(id)a3 withId:(id)a4 withId:(id)a5;
- (void)firePropertyChangeWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3;
- (void)removePropertyChangeListenerWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaBeansPropertyChangeSupport

- (void)firePropertyChangeWithNSString:(id)a3 withId:(id)a4 withId:(id)a5
{
  v6 = new_JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(self->sourceBean_, a3, a4, a5);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v6];
}

- (void)fireIndexedPropertyChangeWithNSString:(id)a3 withInt:(int)a4 withId:(id)a5 withId:(id)a6
{
  v7 = new_JavaBeansIndexedPropertyChangeEvent_initWithId_withNSString_withId_withId_withInt_(self->sourceBean_, a3, a5, a6, a4);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v7];
}

- (void)removePropertyChangeListenerWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (sub_1001CE0AC(a3, a4, v12))
        {
          [(JavaUtilList *)self->listeners_ removeWithId:v12, v13];
          return;
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }
}

- (void)addPropertyChangeListenerWithNSString:(id)a3 withJavaBeansPropertyChangeListener:(id)a4
{
  if (a3 && a4)
  {
    listeners = self->listeners_;
    if (!listeners)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_(a3, a4);

    [(JavaUtilList *)listeners addWithId:v5];
  }
}

- (id)getPropertyChangeListenersWithNSString:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (!v12)
          {
            goto LABEL_16;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            JreThrowClassCastException();
          }

          if (LibcoreUtilObjects_equalWithId_withId_(a3, [v12 getPropertyName]))
          {
            [(JavaUtilArrayList *)v7 addWithId:v12];
          }
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:JavaBeansPropertyChangeListener_class_()]];
}

- (void)firePropertyChangeWithNSString:(id)a3 withBoolean:(BOOL)a4 withBoolean:(BOOL)a5
{
  v8 = JavaLangBoolean_valueOfWithBoolean_(a4);
  v9 = JavaLangBoolean_valueOfWithBoolean_(a5);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:a3 withId:v8 withId:v9];
}

- (void)firePropertyChangeWithNSString:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  v8 = JavaLangInteger_valueOfWithInt_(a4);
  v9 = JavaLangInteger_valueOfWithInt_(a5);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:a3 withId:v8 withId:v9];
}

- (BOOL)hasListenersWithNSString:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(listeners);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        if (!v9)
        {
          goto LABEL_17;
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          JreThrowClassCastException();
        }

        if (LibcoreUtilObjects_equalWithId_withId_(a3, [v9 getPropertyName]))
        {
LABEL_14:
          LOBYTE(v5) = 1;
          return v5;
        }
      }

      v6 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v11 objects:v15 count:16];
      LOBYTE(v5) = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilList *)self->listeners_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(listeners);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (sub_1001CE0AC(0, a3, v10))
        {
          [(JavaUtilList *)self->listeners_ removeWithId:v10, v11];
          return;
        }
      }

      v7 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)a3
{
  if (a3)
  {
    listeners = self->listeners_;
    if (!listeners)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilList *)listeners addWithId:?];
  }
}

- (id)getPropertyChangeListeners
{
  listeners = self->listeners_;
  if (!listeners)
  {
    JreThrowNullPointerException();
  }

  v3 = [IOSObjectArray arrayWithLength:0 type:JavaBeansPropertyChangeListener_class_()];

  return [(JavaUtilList *)listeners toArrayWithNSObjectArray:v3];
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  v5 = new_JavaUtilHashtable_init();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
    goto LABEL_33;
  }

  v7 = v5;
  v29 = a3;
  v8 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(listeners);
        }

        v12 = *(*(&v34 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([JavaIoSerializable_class_() isInstance:v12] & 1) == 0)
        {
          objc_opt_class();
          if (!v12)
          {
            goto LABEL_33;
          }

          if ((objc_opt_isKindOfClass() & 1) == 0 || (v13 = [v12 getListener], v14 = JavaBeansPropertyChangeListener_class_(), v13) && (objc_msgSend(v14, "isInstance:", v13) & 1) == 0)
          {
            JreThrowClassCastException();
          }

          if ([JavaIoSerializable_class_() isInstance:v13])
          {
            v15 = -[JavaUtilHashtable getWithId:](v7, "getWithId:", [v12 getPropertyName]);
            if (v15)
            {
              v16 = v15;
            }

            else
            {
              sourceBean = self->sourceBean_;
              v18 = v7;
              v19 = [JavaBeansPropertyChangeSupport alloc];
              JavaBeansPropertyChangeSupport_initWithId_(v19, sourceBean);
              v20 = v19;
              v7 = v18;
              v16 = v20;
              -[JavaUtilHashtable putWithId:withId:](v18, "putWithId:withId:", [v12 getPropertyName], v16);
              if (!v16)
              {
                goto LABEL_33;
              }
            }

            [v16[2] addWithId:v13];
          }
        }
      }

      v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v9);
  }

  if (!v29 || (v21 = [v29 putFields]) == 0)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v22 = v21;
  [v21 putWithNSString:@"source" withId:self->sourceBean_];
  [v22 putWithNSString:@"children" withId:v7];
  [v29 writeFields];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->listeners_;
  v24 = [(JavaUtilList *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * j);
        if ([JavaIoSerializable_class_() isInstance:v28])
        {
          [v29 writeObjectWithId:v28];
        }
      }

      v25 = [(JavaUtilList *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }

  [v29 writeObjectWithId:0];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_26;
  }

  v5 = [a3 readFields];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  v24 = a3;
  JreStrongAssign(&self->sourceBean_, [v5 getWithNSString:@"source" withId:0]);
  v7 = new_JavaUtilConcurrentCopyOnWriteArrayList_init();
  JreStrongAssignAndConsume(&self->listeners_, v7);
  v8 = [v6 getWithNSString:@"children" withId:0];
  v9 = JavaUtilMap_class_();
  if (!v8)
  {
    goto LABEL_22;
  }

  if (([v9 isInstance:v8] & 1) == 0)
  {
LABEL_27:
    JreThrowClassCastException();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v8 entrySet];
  if (!v10)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v11 = v10;
  v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  obj = v11;
  v26 = *v32;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v32 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v31 + 1) + 8 * i);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      if (!v15)
      {
        goto LABEL_26;
      }

      v16 = [v15 getValue];
      if (!v16)
      {
        goto LABEL_26;
      }

      v17 = v16[2];
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            -[JavaUtilList addWithId:](self->listeners_, "addWithId:", new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_([v15 getKey], *(*(&v27 + 1) + 8 * j)));
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v19);
      }
    }

    v13 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v13);
LABEL_22:
  while (1)
  {
    v22 = [v24 readObject];
    v23 = JavaBeansPropertyChangeListener_class_();
    if (!v22)
    {
      break;
    }

    if (([v23 isInstance:v22] & 1) == 0)
    {
      goto LABEL_27;
    }

    [(JavaUtilList *)self->listeners_ addWithId:v22];
  }
}

- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)a3
{
  if (!a3)
  {
    goto LABEL_25;
  }

  v5 = [a3 getPropertyName];
  v6 = [a3 getOldValue];
  v7 = [a3 getNewValue];
  if (v7 && v6 && ([v7 isEqual:v6] & 1) != 0)
  {
    return;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  listeners = self->listeners_;
  if (!listeners)
  {
LABEL_25:
    JreThrowNullPointerException();
  }

  v9 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(listeners);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        while (1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          objc_opt_class();
          if (!v13)
          {
            goto LABEL_25;
          }

          if (objc_opt_isKindOfClass())
          {
            if (!LibcoreUtilObjects_equalWithId_withId_([v13 getPropertyName], v5))
            {
              goto LABEL_21;
            }

            v13 = [v13 getListener];
            v14 = JavaBeansPropertyChangeListener_class_();
            if (!v13 || ([v14 isInstance:v13] & 1) != 0)
            {
              continue;
            }
          }

          JreThrowClassCastException();
        }

        if (!v13)
        {
          goto LABEL_25;
        }

        [v13 propertyChangeWithJavaBeansPropertyChangeEvent:{a3, v15}];
LABEL_21:
        ;
      }

      v10 = [(JavaUtilList *)listeners countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaBeansPropertyChangeSupport;
  [(JavaBeansPropertyChangeSupport *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = NSObject_class_();
    v6[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"source", v2);
    v3 = NSObject_class_();
    v4 = [IOSClass intClass:v6[0]];
    v6[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"propertyChangeSupportSerializedDataVersion", v4);
    v5 = [IOSObjectArray newArrayWithObjects:v6 count:3 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554E20, v5);
    atomic_store(1u, &JavaBeansPropertyChangeSupport__initialized);
  }
}

@end