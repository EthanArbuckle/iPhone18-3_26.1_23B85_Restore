@interface _IMNotificationObservationHelper
- (_IMNotificationObservationHelper)initWithObserver:(id)a3 name:(id)a4 object:(id)a5 block:(id)a6;
- (void)dealloc;
@end

@implementation _IMNotificationObservationHelper

- (_IMNotificationObservationHelper)initWithObserver:(id)a3 name:(id)a4 object:(id)a5 block:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = _IMNotificationObservationHelper;
  v15 = [(_IMNotificationObservationHelper *)&v30 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_observer, a3);
    v19 = objc_msgSend_copy(v14, v17, v18);
    block = v16->_block;
    v16->_block = v19;

    v23 = objc_msgSend_copy(v12, v21, v22);
    name = v16->_name;
    v16->_name = v23;

    objc_storeStrong(&v16->_object, a5);
    v27 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v25, v26);
    objc_msgSend_addObserver_selector_name_object_(v27, v28, v16, sel__notification_, v12, v13);
  }

  return v16;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  objc_msgSend_removeObserver_name_object_(v4, v5, self, self->_name, self->_object);

  v6.receiver = self;
  v6.super_class = _IMNotificationObservationHelper;
  [(_IMNotificationObservationHelper *)&v6 dealloc];
}

@end