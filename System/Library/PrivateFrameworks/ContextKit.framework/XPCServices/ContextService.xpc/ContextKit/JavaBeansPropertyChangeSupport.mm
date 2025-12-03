@interface JavaBeansPropertyChangeSupport
+ (void)initialize;
- (BOOL)hasListenersWithNSString:(id)string;
- (id)getPropertyChangeListeners;
- (id)getPropertyChangeListenersWithNSString:(id)string;
- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)addPropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener;
- (void)dealloc;
- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withId:(id)id withId:(id)withId;
- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)event;
- (void)firePropertyChangeWithNSString:(id)string withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean;
- (void)firePropertyChangeWithNSString:(id)string withId:(id)id withId:(id)withId;
- (void)firePropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener;
- (void)removePropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaBeansPropertyChangeSupport

- (void)firePropertyChangeWithNSString:(id)string withId:(id)id withId:(id)withId
{
  v6 = new_JavaBeansPropertyChangeEvent_initWithId_withNSString_withId_withId_(self->sourceBean_, string, id, withId);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v6];
}

- (void)fireIndexedPropertyChangeWithNSString:(id)string withInt:(int)int withId:(id)id withId:(id)withId
{
  v7 = new_JavaBeansIndexedPropertyChangeEvent_initWithId_withNSString_withId_withId_withInt_(self->sourceBean_, string, id, withId, int);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithJavaBeansPropertyChangeEvent:v7];
}

- (void)removePropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener
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
        if (sub_1001CE0AC(string, listener, v12))
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

- (void)addPropertyChangeListenerWithNSString:(id)string withJavaBeansPropertyChangeListener:(id)listener
{
  if (string && listener)
  {
    listeners = self->listeners_;
    if (!listeners)
    {
      JreThrowNullPointerException();
    }

    v5 = new_JavaBeansPropertyChangeListenerProxy_initWithNSString_withJavaBeansPropertyChangeListener_(string, listener);

    [(JavaUtilList *)listeners addWithId:v5];
  }
}

- (id)getPropertyChangeListenersWithNSString:(id)string
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

          if (LibcoreUtilObjects_equalWithId_withId_(string, [v12 getPropertyName]))
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

- (void)firePropertyChangeWithNSString:(id)string withBoolean:(BOOL)boolean withBoolean:(BOOL)withBoolean
{
  v8 = JavaLangBoolean_valueOfWithBoolean_(boolean);
  v9 = JavaLangBoolean_valueOfWithBoolean_(withBoolean);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:string withId:v8 withId:v9];
}

- (void)firePropertyChangeWithNSString:(id)string withInt:(int)int withInt:(int)withInt
{
  v8 = JavaLangInteger_valueOfWithInt_(int);
  v9 = JavaLangInteger_valueOfWithInt_(withInt);

  [(JavaBeansPropertyChangeSupport *)self firePropertyChangeWithNSString:string withId:v8 withId:v9];
}

- (BOOL)hasListenersWithNSString:(id)string
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

        if (LibcoreUtilObjects_equalWithId_withId_(string, [v9 getPropertyName]))
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

- (void)removePropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
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
        if (sub_1001CE0AC(0, listener, v10))
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

- (void)addPropertyChangeListenerWithJavaBeansPropertyChangeListener:(id)listener
{
  if (listener)
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

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
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
  streamCopy = stream;
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

  if (!streamCopy || (v21 = [streamCopy putFields]) == 0)
  {
LABEL_33:
    JreThrowNullPointerException();
  }

  v22 = v21;
  [v21 putWithNSString:@"source" withId:self->sourceBean_];
  [v22 putWithNSString:@"children" withId:v7];
  [streamCopy writeFields];
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
          [streamCopy writeObjectWithId:v28];
        }
      }

      v25 = [(JavaUtilList *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }

  [streamCopy writeObjectWithId:0];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_26;
  }

  readFields = [stream readFields];
  if (!readFields)
  {
    goto LABEL_26;
  }

  v6 = readFields;
  streamCopy = stream;
  JreStrongAssign(&self->sourceBean_, [readFields getWithNSString:@"source" withId:0]);
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
  entrySet = [v8 entrySet];
  if (!entrySet)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v11 = entrySet;
  v12 = [entrySet countByEnumeratingWithState:&v31 objects:v36 count:16];
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

      getValue = [v15 getValue];
      if (!getValue)
      {
        goto LABEL_26;
      }

      v17 = getValue[2];
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
    readObject = [streamCopy readObject];
    v23 = JavaBeansPropertyChangeListener_class_();
    if (!readObject)
    {
      break;
    }

    if (([v23 isInstance:readObject] & 1) == 0)
    {
      goto LABEL_27;
    }

    [(JavaUtilList *)self->listeners_ addWithId:readObject];
  }
}

- (void)firePropertyChangeWithJavaBeansPropertyChangeEvent:(id)event
{
  if (!event)
  {
    goto LABEL_25;
  }

  getPropertyName = [event getPropertyName];
  getOldValue = [event getOldValue];
  getNewValue = [event getNewValue];
  if (getNewValue && getOldValue && ([getNewValue isEqual:getOldValue] & 1) != 0)
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

        getListener = *(*(&v15 + 1) + 8 * i);
        while (1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          objc_opt_class();
          if (!getListener)
          {
            goto LABEL_25;
          }

          if (objc_opt_isKindOfClass())
          {
            if (!LibcoreUtilObjects_equalWithId_withId_([getListener getPropertyName], getPropertyName))
            {
              goto LABEL_21;
            }

            getListener = [getListener getListener];
            v14 = JavaBeansPropertyChangeListener_class_();
            if (!getListener || ([v14 isInstance:getListener] & 1) != 0)
            {
              continue;
            }
          }

          JreThrowClassCastException();
        }

        if (!getListener)
        {
          goto LABEL_25;
        }

        [getListener propertyChangeWithJavaBeansPropertyChangeEvent:{event, v15}];
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
  if (objc_opt_class() == self)
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